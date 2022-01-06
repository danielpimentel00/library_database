drop database if exists Biblioteca;
create database Biblioteca;
use Biblioteca;

--Creación de tablas
create table libros(ID int identity(1,1)primary key,
					nombre varchar(100) not null, 
					autor varchar(100), 
					edicion int, 
					numero_copias int check(numero_copias >= 0) default 0)


create table copias(codigo_copia varchar(8) primary key,
					ID_libro int foreign key references libros(ID) not null,
					estado varchar(20) check(estado in ('disponible','no_disponible','perdido')), 
					tipo varchar(20) check(tipo in ('referencia', 'estudio')))


create table persona(ID varchar(20) primary key,	
					 nombre varchar(20) not null, 
					 apellido1 varchar(20) not null, 
					 apellido2 varchar(20), 
					 tipo varchar(20) check(tipo in ('estudiante', 'profesor')), 
					 cantidad_reservada int check(cantidad_reservada >= 0) default 0)


create table reservaciones(ID int identity(1,1) primary key, 
						   ID_persona varchar(20) foreign key references persona(ID) not null, 
						   codigo_copia varchar(8) foreign key references copias(codigo_copia) not null, 
						   fecha_reservacion date not null, 
						   fecha_esperada date,
						   fecha_devolucion date)


create table tiempo_receso(ID_persona varchar(20) not null,
						   codigo_copia varchar(8) not null,
						   fecha_inicio date,
						   fecha_fin as dateadd(day, 7, fecha_inicio),
						   primary key (ID_persona, codigo_copia),	
						   foreign key (ID_persona) references persona(ID),
						   foreign key (codigo_copia) references copias(codigo_copia))


create table multa(ID_multa int identity(1,1) primary key, 
				   ID_reserv int foreign key references reservaciones(ID), 
				   ID_persona varchar(20) foreign key references persona(ID),
				   pago_multa int check(pago_multa between 0 and 3650) default 0, 
				   vigente varchar(2) check(vigente in ('si', 'no')))