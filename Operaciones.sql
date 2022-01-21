USE ESCUELAPATITO;

SHOW TABLES;

#Operación con comandos matemáticos.
#operaciones basicas
select 5+3;
select 5-3;
select 2*3;
select 8/4;

#valor absoluto
select ABS(-25);

#numero aleatorio
select RAND(50);

#Operaciones de fecha y hora.
#Selecciona el año
select YEAR(NOW());

#Selecciona el mes
select MONTH (NOW()) as mes;
select MONTH (NOW());

#Selecciona el día 
select DAY(NOW()) as dia; 
select DAY(NOW()); 

#Selecciona la hora
select TIME(NOW()) as hora; 
select TIME(NOW()); 

# Selecciona el ultimo dia del mes 
Select LAST_DAY(NOW()); 


#Operaciones de cadena.
#retorna el valor de ascii a su caracter
select CHAR(65,66,67);

#retorna el valor de una letra a ascii
select ASCII('A');

#concatena cadenas
select CONCAT('Hola,',' ','como esta?');


#Operaciones de agregado.
#suma todos los valores de Dept
select sum(Dept) from DEPARTAMENTO;

#Nos dice el valor minimo de Dept
select min(Dept) from DEPARTAMENTO;

#Nos dice el valor maximo de Dept
select max(Dept) from DEPARTAMENTO;
