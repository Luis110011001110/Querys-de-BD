#tienda
DROP DATABASE tienda;
CREATE DATABASE tienda;
USE tienda;

CREATE TABLE oficinas(
  oficina int AUTO_INCREMENT UNIQUE,
  ciudad varchar(10) NOT NULL UNIQUE,
  region varchar(3) NOT NULL,
  PRIMARY KEY(oficina)
);
#registro con datos
INSERT INTO oficinas(ciudad,region)VALUES('Aguascalientes','Aguascalientes');
INSERT INTO oficinas(ciudad,region)VALUES('Edomex','Toluca');
#registros con valores nulos
INSERT INTO oficinas(ciudad,region)VALUES(default);
INSERT INTO oficinas(ciudad,region)VALUES();#error al segundo dato al estar vacios completos  o colocar a ambos null (por ser unics)
describe oficinas;
SELECT*FROM oficinas;



CREATE TABLE clientes(
  num_cliente int AUTO_INCREMENT,
  empresa varchar(4) NOT NULL,
  credito int DEFAULT 100,
  PRIMARY KEY(num_cliente)
);
#registro con datos
INSERT INTO clientes(empresa,credito)VALUES('uno',110);
INSERT INTO clientes(empresa,credito)VALUES('dos',120);
#registros con valores nulos
INSERT INTO clientes(empresa,credito)VALUES(null,null);
INSERT INTO clientes(empresa,credito)VALUES('','');
describe clientes;
SELECT*FROM clientes;

CREATE TABLE productos(
  id_producto int AUTO_INCREMENT,
  descripcion varchar(10) DEFAULT "MUY BONITO", 
  PRIMARY KEY(id_producto)
);
#registro con datos
INSERT INTO productos(descripcion)VALUES('cuerno');
INSERT INTO productos(descripcion)VALUES('barquillo');
#registros con valores nulos
INSERT INTO productos(descripcion)VALUES(default);
INSERT INTO productos(descripcion)VALUES('');
describe productos;
SELECT*FROM productos;


CREATE TABLE ventas(
  id_venta int AUTO_INCREMENT,
  id_producto int,
  num_cliente int NOT NULL,
  PRIMARY KEY(id_venta),
  FOREIGN KEY(id_producto) REFERENCES productos(id_producto),
  FOREIGN KEY(num_cliente) REFERENCES clientes(num_cliente)
);
#registro con datos
INSERT INTO ventas(id_producto,num_cliente)VALUES(1,1);
INSERT INTO ventas(id_producto,num_cliente)VALUES(2,3);
#registros con valores nulos
INSERT INTO ventas(id_producto,num_cliente)VALUES(default);
INSERT INTO ventas(id_producto,num_cliente)VALUES('','');
INSERT INTO ventas(id_producto,num_cliente)VALUES(null);
describe ventas;
SELECT*FROM ventas;

