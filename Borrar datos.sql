drop database tiendav4;
create database tiendav4;
show databases;
use tiendaV4;
# Borrado de todas las tablas de la BD
delete from venta;
delete from articulo;
delete from producto;
	
#Creacion de tablas e insercion de datos
#tabla venta
CREATE TABLE IF NOT EXISTS `tiendav4`.`venta` 
	(`fecha` varchar(10), 
	`precio` int(2), 
	`cantidad` int(1), 
	`clave` int(1)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
#insercion venta
INSERT INTO `tiendav4`.`venta` (`fecha`, `precio`, `cantidad`, `clave`) 
VALUES ('15-10-2010', 13, 3, 1),
	   ('15-10-2010', 13, 4, 2),
	   ('15-10-2010', 15, 5, 3);
#tabla articulo
CREATE TABLE IF NOT EXISTS `tiendav4`.`articulo` 
	(`Producto` varchar(9), 
	`estante` varchar(1), 
	`cantidad` int(3), 
	`precio` int(2), `fecha` 
	varchar(10)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
#insercion de articulos
INSERT INTO `tiendav4`.`articulo` (`Producto`, `estante`, `cantidad`, `precio`, `fecha`) 
VALUES ('Galletas', 'A', 123, 12, '2010-12-3;'),
	   ('Galletas', 'A', 123, 12, '2010-12-3;'),
	   ('Galletas', 'A', 123, 12, '2010-12-3;'),
	   ('Chocolate', 'B', 2, 13, '2010-3-3;'),
	   ('Chocolate', 'B', 2, 13, '2010-3-3;'),
	   ('Chocolate', 'B', 2, 13, '2010-3-3;');
#tabla producto
CREATE TABLE IF NOT EXISTS `tiendav4`.`producto` 
	(`producto` varchar(8),
	`cantidad` int(2),
	`precio` varchar(4)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
#insercion de productos
INSERT INTO `tiendav4`.`producto` (`producto`, `cantidad`, `precio`)
VALUES ('Donas', 13, '10.5'),
       ('CocaCola', 14, '17.5'),
	   ('Fanta', 15, '23.6');
#modificacion de precio
UPDATE `producto` SET `producto`='as' WHERE 'precio' = 30;
UPDATE producto SET producto = REPLACE (precio'17.5','30') WHERE producto = "as";
#aumentar a candtidad 3
SELECT  producto, sum(cantidad) + sum(3) FROM cantidad;

