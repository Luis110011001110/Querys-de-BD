create database Escuela;

use Escuela;

create table estudiante 
	(Nombre varchar (20), 
	Apellido varchar (20), 
	NoCuenta int primary key, 
	Carrera char (3)
	);

insert into estudiante values ("Juan", "Diaz", 1528, "ISW");
insert into estudiante values ("Ana", "Diaz", 1529, "IPI");
insert into estudiante values ("Ariel", "Gomez", 1530, "ISW");
insert into estudiante values ("Guadalupe", "Barrera", 1531, "IPI");
insert into estudiante values ("Benjamin", "Lopez", 1532, "LSC");
insert into estudiante values ("Juan", "Diaz", 1533, "LSC");	

create table docente 
	(Nombre varchar (20), 
	Apellido varchar (20), 
	rfc char (4) primary key, 
	FechaIngreso date);
insert into docente values ("Juanita", "Rosas", "JURO", "2007-01-01");
insert into docente values ("Anastasio", "Diaz", "ANDI", "2007-02-01");
insert into docente values ("Ariel", "Lopez", "ARLO", "2007-01-15");
insert into docente values ("Guadalupe", "Gonzalez", "GUGO", "2008-03-01");
insert into docente values ("Benjamina", "Lopez", "BELO", "2009-01-15");
insert into docente values ("Guadalupe", "Gonzalez", "GUGO", "2010-03-01");

create table asignatura 
	(Nombre varchar (20), 
	Creditos int, 
	Clave int primary key);

insert into asignatura values ("Base de datos", 8, 100);
insert into asignatura values ("Base de datos Avanza", 10, 200);
insert into asignatura values ("Desarrollo web", 8, 300);
insert into asignatura values ("Compiladores", 12, 400);

create table boleta 
	(Clave int, 
	rfc char (4), 
	NoCuenta int, 
	Calificacion float,
 foreign key (Clave) references asignatura (Clave),
 foreign key (rfc) references docente (rfc),
 foreign key (NoCuenta) references estudiante (NoCuenta));

insert into boleta values (300, "JURO", 1530, 9.5);
insert into boleta values (300, "ANDI", 1529, 8.2);
insert into boleta values (200, "JURO", 1530, 6.3);
insert into boleta values (200, "JURO", 1528, 5.2);
insert into boleta values (200, "ANDI", 1530, 7.8);
insert into boleta values (200, "ARLO", 1531, 9.2);
insert into boleta values (100, "BELO", 1528, 10.0);
insert into boleta values (100, "BELO", 1532, 4.3);
insert into boleta values (200, "JURO", 1530, 6.3);
insert into boleta values (200, "JURO", 1528, 5.2);

SELECT CONCAT(CONCAT(substring(APELLIDO,1,2),substring(FechaIngreso,1,4),"@uaemex.mx")) FROM DOCENTE;