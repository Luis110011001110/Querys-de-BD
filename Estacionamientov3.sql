mysql –u root -p

DROP DATABASE estacionamientoV3;
CREATE DATABASE estacionamiento;
USE estacionamiento;



CREATE TABLE automovil(
    placas_auto INT AUTO_INCREMENT,
    precio FLOAT(10) NOT NULL,
    color VARCHAR(20) NOT NULL,
    marca VARCHAR(20) NOT NULL
    PRIMARY KEY(placas_auto)
);
#inserciones en tablaautomovil#
insert into automovil (precio,color,marca) values (253, 'rojo','mustang');
insert into automovil (precio,color,marca) values (253, 'rojo','nissan');
insert into automovil (precio,color,marca) values (253, 'rojo','mercedez');
insert into automovil (precio,color,marca) values (253, 'rojo','chevrolet');
insert into automovil (precio,color,marca) values (253, 'rojo','toyota');
#consulta por seleccion en tabla automovil#
SELECT*FROM automovil WHERE placas_auto='1'
SELECT*FROM automovil WHERE precio='253'
SELECT*FROM automovil WHERE color='rojo'
SELECT*FROM automovil WHERE marca='toyota'

DELETE*FROM automovil WHERE placas_auto='1'
DELETE*FROM automovil WHERE precio='253'
DELETE*FROM automovil WHERE color='rojo'
DELETE*FROM automovil WHERE marca='toyota'



CREATE TABLE registro(
    placas_auto int NOT NULL UNIQUE,
    fecha_entrada TIME(6) NOT NULL,
    fecha_salida TIME(6) NOT NULL,
    FOREIGN KEY (placas_auto) REFERENCES automovil (placas_auto)
);
insert into registro (placas_auto,fecha_entrada,fecha_salida) values (1,'23/02/2020','23/02/2020');
insert into registro (placas_auto,fecha_entrada,fecha_salida) values (2,'24/02/2020','24/02/2020');
insert into registro (placas_auto,fecha_entrada,fecha_salida) values (3,'25/02/2020','25/02/2020');
insert into registro (placas_auto,fecha_entrada,fecha_salida) values (4,'26/02/2020','26/02/2020');
insert into registro (placas_auto,fecha_entrada,fecha_salida) values (5,'27/02/2020','27/02/2020');
#consulta a tabla registro#
SELECT*FROM registro WHERE fecha_entrada='23/02/2020'
SELECT*FROM registro WHERE fecha_salida='23/02/2020'

DELETE*FROM registro WHERE fecha_entrada='23/02/2020'
DELETE*FROM registro WHERE fecha_salida='23/02/2020'


CREATE TABLE estacionamiento(
    no_cuenta INT AUTO_INCREMENT,
    placas_auto int NOT NULL UNIQUE,
    carrera VARCHAR(50) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    ap_paterno VARCHAR(50) NOT NULL,
    ap_materno VARCHAR(50) NOT NULL,
    PRIMARY KEY(no_cuenta),
    FOREIGN KEY (placas_auto) REFERENCES automovil (placas_auto)
);
insert into estacionamiento (placas_auto,carrera, nombre, ap_paterno, ap_materno) values (1,'isw', 'luis', 'zepeda', 'gonzalez');
insert into estacionamiento (placas_auto,carrera, nombre, ap_paterno, ap_materno) values (2,'isw', 'gustavo', 'zepeda', 'gonzalez');
insert into estacionamiento (placas_auto,carrera, nombre, ap_paterno, ap_materno) values (3,'isw', 'jorge', 'parra', 'alvarado');
insert into estacionamiento (placas_auto,carrera, nombre, ap_paterno, ap_materno) values (4,'isw', 'moi', 'vidal', 'hernandez');
insert into estacionamiento (placas_auto,carrera, nombre, ap_paterno, ap_materno) values (5,'isw', 'tony', 'ballesteros', 'an');
#consulta por seleccion a tabla estacionamiento#
SELECT*FROM estacionamiento WHERE no_cuenta='1'
SELECT*FROM estacionamiento WHERE carrera='isw'
SELECT*FROM estacionamiento WHERE nombre='luis'
SELECT*FROM estacionamiento WHERE ap_paterno='zepeda'
SELECT*FROM estacionamiento WHERE ap_materno='gonzalez'

DELETE*FROM estacionamiento WHERE no_cuenta='1'
DELETE*FROM estacionamiento WHERE carrera='isw'
DELETE*FROM estacionamiento WHERE nombre='luis'
DELETE*FROM estacionamiento WHERE ap_paterno='zepeda'
DELETE*FROM estacionamiento WHERE ap_materno='gonzalez'






describe automovil;
describe registro;
describe estacionamiento;

show databases;
show tables;

drop table automóvil;
drop table registro;
drop table estacionamiento;

