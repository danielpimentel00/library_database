--Jobs
--Trabajo (job) 1: Manejo de multas (se ejecutaría diario) 

--Paso 1: Crear multa
declare @total int = (select count(fecha_esperada) 
							 from reservaciones r 
							 where fecha_devolucion is null 
							 and not exists
							 	(select *
							 	 from multa m
							 	 where r.ID = m.ID_reserv))

while(@total > 0)
begin
	declare @fecha_actual date = getdate();
	declare @fecha_esperada date = (select top 1 fecha_esperada 
									from reservaciones r 
									where fecha_devolucion is null 
									and not exists
										(select *
										 from multa m
										 where r.ID = m.ID_reserv))

	declare @ID_reserv int = (select top 1 ID 
							  from reservaciones r 
							  where fecha_devolucion is null 
							  and not exists
									(select *
									 from multa m
									 where r.ID = m.ID_reserv))

	declare @ID_persona varchar(20) = (select top 1 ID_persona 
									  from reservaciones r 
									  where fecha_devolucion is null 
									  and not exists
											(select *
											 from multa m
											 where r.ID = m.ID_reserv))

	if(@fecha_actual > @fecha_esperada)
	begin
		insert into multa(ID_reserv, ID_persona, pago_multa, vigente)
		values (@ID_reserv, @ID_persona, 10, 'si')
	end

	set @total-=1;
end


--Paso 2: Aumentar multa
update multa 
set pago_multa += 10 
from reservaciones r
inner join multa m 
on r.ID = m.ID_reserv 
where r.fecha_devolucion is null;


--Trabajo (job) 2: Manejo del cooldown de reservacion (se ejecutaría diario)

--Paso 1: Eliminacion del registro

declare @total_regs int = (select count(*)
						from tiempo_receso)

declare @tiempo_receso_temp table(fecha_fin date) 
insert into @tiempo_receso_temp select fecha_fin from tiempo_receso

declare @fecha_actual_tr date = getdate();

while(@total_regs > 0)
begin
	declare @fecha_fin_tr date = (select top 1 fecha_fin from @tiempo_receso_temp);

	delete top (1) from tiempo_receso where @fecha_actual_tr >= @fecha_fin_tr

	delete top (1) from @tiempo_receso_temp;
	set @total_regs -= 1;
end