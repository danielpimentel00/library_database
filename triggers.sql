--Triggers
create trigger TR_verifica_condiciones_reservacion 
on reservaciones
instead of insert
as 
	begin
		set nocount on
		declare @cantidad_reservada int = (select cantidad_reservada from inserted i inner join persona p on (p.ID = i.ID_persona))
		declare @tipo_persona varchar(20) = (select tipo from inserted i inner join persona p on p.ID = i.ID_persona)
		declare @tipo_copia varchar(20) = (select c.tipo from inserted i inner join copias c on (c.codigo_copia = i.codigo_copia))
		declare @estado_copia varchar(20) = (select c.estado from inserted i inner join copias c on (c.codigo_copia = i.codigo_copia))
		declare @ID_persona varchar(20) = (select distinct tr.ID_persona from inserted i inner join tiempo_receso tr on i.ID_persona = tr.ID_persona)
		declare @codigo_copia varchar(8) = (select distinct tr.codigo_copia from inserted i inner join tiempo_receso tr on i.codigo_copia = tr.codigo_copia)
		declare @vigente varchar(2) = (select distinct m.vigente from inserted i inner join multa m on i.ID_persona = m.ID_persona)

		if (@cantidad_reservada >= 5 and @tipo_persona = 'estudiante') or (@cantidad_reservada >= 10 and @tipo_persona = 'profesor')
		begin
			raiserror('Esta persona no puede reservar más libros',1,1)
		end
		else if(@vigente = 'si')
		begin
			raiserror('Debe pagar la multa antes de reservar otro libro',1,1)
		end
		else if (@tipo_copia != 'estudio' or @estado_copia != 'disponible')
		begin
			raiserror('Este libro no está disponible para reservar',1,1)
		end
		else if (@ID_persona is not null and @codigo_copia is not null)
		begin
			raiserror('Esta persona no puede volver reservar el libro aun',1,1)
		end
		else
		begin
			--Aumentar en 1 la cantidad reservada
			update persona
			set cantidad_reservada += 1 
			from inserted i inner join persona p
			on (p.ID = i.ID_persona);

			--Actualizar fecha_espera
			insert into reservaciones(ID_persona, codigo_copia, fecha_reservacion, fecha_esperada)
			select ID_persona, 
					codigo_copia, 
					fecha_reservacion,
					case
					when p.tipo = 'estudiante' then dateadd(day, 14, fecha_reservacion)
					when p.tipo = 'profesor' then dateadd(day, 28, fecha_reservacion)
					end as fecha_esperada
			from inserted i
			inner join persona p
			on i.ID_persona = p.ID;

			--Actualiza estado de la copia
			set @estado_copia = 'no_disponible';

			update copias
			set estado = @estado_copia
			from inserted i inner join copias c
			on (i.codigo_copia = c.codigo_copia);
		end
	end	
go


create trigger TR_actualizacion_despues_de_devolucion 
on reservaciones
after update
as 
	begin
		set nocount on
		declare @fecha_devolucion_deleted date = (select (fecha_devolucion) from deleted d inner join persona p on (p.ID = d.ID_persona))
		declare @fecha_devolucion_inserted date = (select (fecha_devolucion) from inserted i inner join persona p on (p.ID = i.ID_persona))
		declare @estado_copia varchar(20) = (select c.estado from inserted i inner join copias c on (c.codigo_copia = i.codigo_copia))

		if (@fecha_devolucion_deleted is null) and (@fecha_devolucion_inserted is not null)
		begin
			--Actualiza fecha devolución
			update persona
			set cantidad_reservada -= 1 
			from inserted i 
			inner join persona p 
			on p.ID = i.ID_persona;

			--Actualiza estado de la copia
			set @estado_copia = 'disponible';

			update copias
			set estado = @estado_copia
			from inserted i 
			inner join copias c
			on i.codigo_copia = c.codigo_copia;

			--Actualiza fecha_inicio del receso
			insert into tiempo_receso(ID_persona, codigo_copia, fecha_inicio)
			select i.ID_persona,
				   i.codigo_copia,
				   dateadd(day, 1, i.fecha_devolucion)
			from inserted i 
		end
	end
go


create trigger TR_actualizacion_numero_copias
on copias
after insert
as
	begin
		set nocount on
		update libros
		set numero_copias += 1
		from inserted i
		inner join libros l
		on i.ID_libro = l.ID
	end
go


create trigger TR_insercion_libros
on libros
instead of insert
as
	begin
		set nocount on
		insert into libros(nombre, autor, edicion)
		select nombre,
				autor,
				edicion
		from inserted
	end
go


create trigger TR_insercion_personas
on persona
instead of insert
as
	begin
		set nocount on
		insert into persona(ID, nombre, apellido1, apellido2, tipo)
		select ID,
			   nombre,
			   apellido1,
			   apellido2,
			   tipo
		from inserted
	end
go


create trigger TR_pagar_multa
on multa
instead of update
as
	begin
		set nocount on
		declare @fecha_devolucion date = (select distinct r.fecha_devolucion from reservaciones r inner join deleted d on d.ID_reserv = r.ID)
		declare @pago_multa int = (select distinct pago_multa from inserted)

		if(@fecha_devolucion is not null and @pago_multa = 0)
		begin
			update multa
			set	vigente = 'no'
			from inserted i
			inner join multa m
			on i.ID_reserv = m.ID_reserv
		end
		else if(@pago_multa = 0 and @fecha_devolucion is null)
		begin
			raiserror('Debe devolver el libro antes de pagar',1,1)
		end
		else
		begin
			update multa 
			set pago_multa += 10 
			from reservaciones r
			inner join multa m 
			on r.ID = m.ID_reserv 
			where r.fecha_devolucion is null;
		end
	end
go