--*   Primera parte
----
--Revisamos si existe una base de datos denominada tienda
SHOW DATABASES;
-- Generamos la base de datos
CREATE DATABASE tienda;
-- La usamos
USE tienda;
--- Generamos la tablas
CREATE TABLE producto ( nombre varchar(20)
						,precio int
					  );

CREATE TABLE cliente( nombre varchar(20)
                     ,rfc char(10)
					);
CREATE TABLE venta(fecha date
                   ,rfc char(10)
				   ,noProducto int 
				);
				
----- Parte 2
-----------------------------------------------------
ALTER TABLE producto ADD noProducto int PRIMARY KEY;

ALTER TABLE  cliente ADD PRIMARY KEY (rfc);

ALTER TABLE venta ADD FOREIGN KEY (rfc)REFERENCES cliente(rfc);
ALTER TABLE venta ADD FOREIGN KEY (noProducto)REFERENCES producto(noProducto);

--- Parte 3
------------------------------------------------------
ALTER TABLE producto DROP PRIMARY KEY;

ALTER TABLE venta DROP FOREIGN KEY;

HELP ALTER TABLE; 

SHOW CREATE TABLE venta;

ALTER TABLE venta DROP FOREIGN KEY venta_ibfk_2;

ALTER TABLE producto DROP PRIMARY KEY;
