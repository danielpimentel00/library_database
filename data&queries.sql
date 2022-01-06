--Insercion de datos
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('1111111','Diego','Garcia','Luciano','estudiante')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('2222222','Daniel','Pimentel',null,'estudiante')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('3333333','Jose','Ramirez','Rey','profesor')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('4444444','Maria','Lapera',null,'profesor')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('5555555','Karla','Quintero','Amanda','estudiante')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('6666666','Marco','Perez','Peguero','estudiante')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('7777777','Luis','Hernesto','Nicolas','estudiante')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('8888888','Ambar','Lux','Sainz','profesor')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('9999999','Maria','Lapera',null,'profesor')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('1111119','Esteven','Cap','America','profesor')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('1655092','Marcos','Magaña','Perez','estudiante')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('1550963','Ruben','López','Martinez','estudiante')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('1315509','Alberto','Soria','Carrasco','profesor')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('1453897','Maria','Solís',null,'profesor')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('1689652','Felipe','Rosas','Marquez','estudiante')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('1389763','Juan Carlos','Ortiz',null,'estudiante')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('3897754','Carlos','Soria',null,'profesor')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('1854362','Mariano','López','Murcia','profesor')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('1638972','Lucio','Campoamor','Martín','profesor')
insert into persona (ID,nombre,apellido1,apellido2,tipo) values ('1473897','David','Palma','Aceituno','estudiante')


insert into libros (nombre,autor,edicion) values ('Introduccion a Algoritmos','MIT',3)
insert into libros (nombre,autor,edicion) values ('Eloquent Javascript','Tanmbaum',9)
insert into libros (nombre,autor,edicion) values ('Calculus','James Stewart',12)
insert into libros (nombre,autor,edicion) values ('Fundamentos de Base de Datos','Henry F. Korth',7)
insert into libros (nombre,autor,edicion) values ('Matematica Discreta I','Alicia Marte',4)
insert into libros (nombre,autor,edicion) values ('Como Ganar Dinero','Luis Abinader',1)
insert into libros (nombre,autor,edicion) values ('El Secreto de lavar Dinero','Danilo Medina',2)
insert into libros (nombre,autor,edicion) values ('Calculo de una Variable','James Stewart',3)
insert into libros (nombre,autor,edicion) values ('Fundamentos de Sistemas Base de Datos',null,5)
insert into libros (nombre,autor,edicion) values ('De la tierra a la Gloria','Jesus Cristopher',1)
insert into libros (nombre,autor,edicion) values ('The River Between','Isaac Asimov',3)
insert into libros (nombre,autor,edicion) values ('Tales of the City','Flannery O''Connor',8)
insert into libros (nombre,autor,edicion) values ('The Leopard','Paulo Coelho',9)
insert into libros (nombre,autor,edicion) values ('Los Miserables','James Stewart',12)
insert into libros (nombre,autor,edicion) values ('Under the Net','Nathan Hill',7)
insert into libros (nombre,autor,edicion) values ('Call It Sleep I','Amos Oz',4)
insert into libros (nombre,autor,edicion) values ('War and Peace','Philip Roth',7)
insert into libros (nombre,autor,edicion) values ('Mercier and Camier','Jhumpa Lahiri',3)
insert into libros (nombre,autor,edicion) values ('Pivot Point','Stephen King',10)
insert into libros (nombre,autor,edicion) values ('The Gifted School','Anissa Gray',12)
insert into libros (nombre,autor,edicion) values ('Before I Fall','Simone de Beauvoir',11)
insert into libros (nombre,autor,edicion) values ('Don Quijote I','Miguel de Cervantes Saavedra',1)


insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EM2050',1,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RM2058',1,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EM2059',1,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EM2140',2,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RM2141',2,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EM2142',2,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EM2014',3,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RM2016',3,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RM2017',3,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RM2018',3,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RM2100',4,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RM2101',4,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EM2081',5,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EM2082',5,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EM2083',5,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EM2084',5,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EM2085',5,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EE2000',6,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RE2500',6,'perdido','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EE2540',6,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EE2541',6,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EE2542',6,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RE2005',7,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EE2008',7,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RM1000',8,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EM1001',8,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EM1008',9,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RN3012',10,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4007',11,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4014',11,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RN3013',12,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4013',13,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RF4001',13,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4019',13,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4035',14,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4036',15,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4061',15,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4089',15,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RF4047',15,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EN3044',16,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RN3096',16,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EN3020',16,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EN3099',17,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EN3067',17,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EN3049',17,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EN3083',17,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RF4025',18,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4077',18,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RF4010',11,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EN3100',12,'perdido','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4022',19,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4041',19,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RN3068',20,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EN3070',20,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('RN3080',20,'disponible','referencia')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EN3094',20,'disponible','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4097',19,'perdido','estudio')
insert into copias (codigo_copia,ID_libro,estado,tipo) values ('EF4099',13,'disponible','estudio')

select * from libros
select * from persona
select * from copias
select * from reservaciones
select * from tiempo_receso
select * from multa

insert into reservaciones(ID_persona,codigo_copia,fecha_reservacion) values ('1111111','EF4089','2021-01-01')
insert into reservaciones(ID_persona,codigo_copia,fecha_reservacion) values ('1111111','EF4099','2021-01-01')
insert into reservaciones(ID_persona,codigo_copia,fecha_reservacion) values ('2222222','EN3094','2021-02-02')
insert into reservaciones(ID_persona,codigo_copia,fecha_reservacion) values ('1111111','EF4022','2021-03-03')
insert into reservaciones(ID_persona,codigo_copia,fecha_reservacion) values ('2222222','RN3080','2021-04-04')

update reservaciones set fecha_devolucion = '2021-01-14' where codigo_copia ='EF4089'
update reservaciones set fecha_devolucion = '2021-01-14' where codigo_copia ='EF4099'
update reservaciones set fecha_devolucion = '2021-02-16' where codigo_copia ='EN3094'
update reservaciones set fecha_devolucion = '2021-01-14' where codigo_copia ='EF4022'

update multa set pago_multa = 0 where ID_multa = 1


insert into reservaciones(ID_persona,codigo_copia,fecha_reservacion) values ('5555555','EE2542','2021-12-02')
insert into reservaciones(ID_persona,codigo_copia,fecha_reservacion) values ('5555555','EF4099','2021-12-02')
insert into reservaciones(ID_persona,codigo_copia,fecha_reservacion) values ('5555555','EN3044','2021-12-02')
insert into reservaciones(ID_persona,codigo_copia,fecha_reservacion) values ('5555555','EM2050','2021-12-02')
insert into reservaciones(ID_persona,codigo_copia,fecha_reservacion) values ('5555555','EE2008','2021-12-02')
insert into reservaciones(ID_persona,codigo_copia,fecha_reservacion) values ('5555555','EF4041','2021-12-02')

update reservaciones set fecha_devolucion = '2021-12-05' where codigo_copia ='EE2542'
update reservaciones set fecha_devolucion = '2021-12-05' where codigo_copia ='EE2008'


truncate table reservaciones
