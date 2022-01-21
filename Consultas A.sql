#U3T4 Consultas Avanzadas
use  escuelapatito;
show tables;

#Muestre todas los Departamentos distintos.
select *from departamento;

#Muestre todas las Ctarifa   distintas de curso.
SELECT * FROM  curso GROUP BY Ctarifa;

#Muestre a todo el personal ordenado por Enombre.
SELECT * FROM  personal GROUP BY Enombre;

#Muestre a todo el personal ordenado por Dept en forma ascendente y por esueldo en forma descendente (en la misma consulta)
SELECT *FROM personal ORDER BY Dept ASC, esueldo DESC;

#Muestra el Cnombre de curso el cual se encuentre entre ES y ESZ;
SELECT  * FROM  curso WHERE Cnombre BETWEEN 'ES' AND 'ESZ';

#Muestre el Cnombre del curso que contenga las siguientes Ctarifa 12,50,75,90
SELECT * FROM curso WHERE Ctarifa IN (12,50,75,90);

#Muestre todos los cursos cuya Cdescp tenga ‘Para’
SELECT * FROM curso WHERE Cdescp LIKE "Para%";

#Muestre todos los cursos cuya Cdescp tenga una ‘a’
SELECT * FROM curso WHERE Cdescp LIKE "a%";
