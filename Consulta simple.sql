#consulta simple
#Una vez revisada la presentación consultas, el video Consultas Simples, hacer las siguientes consultas:

use escuelapatito;

#1)      Muestre la información almacenada en la tabla clase.
select *from clase;

#2)      Muestre cdia y chora de la tabla clase.
select cdia,chora from clase;

#3)      Muestre cnombre, ctarifa, cdescp de la tabla curso.
select cnombre,ctarifa,cdescp from curso;

#4)      Muestre cdept, ctarifa, cred, cdescp, cnombre y cno de la tabla curso.
select cdept,ctarifa,cred,cdescp,cnombre,cno from curso;

#5)      Muestre cdept renombre para que diga Departamento, ctarifa renombre para que diga tarifa, cnombre de la tabla curso.
ALTER TABLE `curso` CHANGE `Cdept` `Departamento` CHAR(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE curso CHANGE ctarifa tarifa char(50);

#6)      Muestre cdia renombrelo para que diga Dia y chora renombrelo para que diga horario de la tabla clase.
ALTER TABLE clase CHANGE cdia dia char(50);
ALTER TABLE clase CHANGE chora horario char(50);

#7)      Muestre todas las clases que se impartan los días lunes (cdia lun)
SELECT *FROM clase WHERE cdia ='lu';

#8)      Muestre todas las clases donde el cdespacho NO sea menor a 200
SELECT cdespacho FROM clase WHERE cdespacho > 200;

#9)      Muestre todos los cursos cuyo precio (ctarifa) se encuentre entre 100 y 200 pesos
SELECT  * FROM  curso WHERE tarifa BETWEEN 100 AND 200;

#10)   Muestre el cnombre renombrar para que diga nombre y el ctarifa renombrar para que diga tarifa de todos los cursos cuya ctarifa sea menor o igual a 200.
ALTER TABLE `curso` CHANGE `Cnombre` `nombre` CHAR(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
SELECT tarifa FROM curso WHERE tarifa <= 200;
