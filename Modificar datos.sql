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
VALUES ('15-10-2010', 13, 8, 1),
	   ('15-10-2010', 13, 7, 2),
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
#UPDATE `producto` SET `producto`='as' WHERE 'precio' = 30;
#UPDATE producto SET producto = REPLACE (precio'17.5','30') WHERE producto = "as";
UPDATE producto SET  precio = "30" WHERE producto > 'as';
#aumentar a candtidad 3
#SELECT  clave, sum(cantidad) + sum(3) FROM venta; #suma valores incrementando 3 a cada reistro
#SELECT  clave, cantidad + sum(3) FROM venta;#suma los 3 valores
SELECT  clave, cantidad + 3 FROM venta;#suma 3 a cada valor
#modificar elemento  de fecha al dato mayor a 13
UPDATE venta SET fecha="30-05-2020", cantidad = "23" WHERE precio > '13';
#cambiar fecha a 20-10-2020  en donas con cantidad vendida >5
UPDATE venta SET fecha="20-10-2020" WHERE cantidad > '5';
#actualizacion de datos en 2 tablas
UPDATE articulo INNER JOIN producto ON articulo.precio >= 9 SET articulo.precio = '78', producto.precio = '78' WHERE producto.precio >= 9;