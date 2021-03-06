USE ESCUELAPATITO;
show tables;


SELECT  * 
FROM clase;

SELECT COUNT(Cinstrfno) 
FROM clase;

SELECT SUM(Cinstrfno) 
FROM clase;

SELECT AVG(Cinstrfno) 
FROM clase;

SELECT STDDEV(Cinstrfno) 
FROM clase;

SELECT COUNT(Cinstrfno)
,CDIA 
FROM clase;

SELECT COUNT(Cinstrfno)
,CDIA 
FROM clase
GROUP BY CDIA;

SELECT AVG(Cinstrfno)
,CDIA 
FROM clase;

SELECT AVG(Cinstrfno)
,CDIA 
FROM clase
GROUP BY CDIA;

SELECT AVG(Cinstrfno)
,CDIA 
FROM clase
WHERE CEDIF='HU'
GROUP BY CDIA;

SELECT  * 
FROM clase
ORDER BY CHORA;


SELECT  * 
FROM clase
ORDER BY CHORA DESC;

SELECT  * 
FROM clase
ORDER BY CHORA ASC;

SELECT  * 
FROM clase
ORDER BY CHORA,CDIA;

SELECT  * 
FROM clase
ORDER BY CDIA DESC,CHORA;

SELECT DISTINCT(CDIA)
FROM CLASE;

SELECT DISTINCT(CHORA)
FROM CLASE;

SELECT *
FROM CURSO;

SELECT *
FROM CURSO
WHERE CTARIFA>=100 AND CTARIFA<=200;

SELECT *
FROM CURSO
WHERE CTARIFA BETWEEN 100 AND 200;

SELECT  * 
FROM clase
WHERE CDIA='LU' 
      OR CDIA='MA'
	  OR CDIA='VI';

SELECT  * 
FROM clase
WHERE CDIA IN('LU','MA','VI');

SELECT  * 
FROM clase
WHERE CDIA NOT IN('LU','MA','VI');


SELECT *
FROM CLAUSTRO
WHERE FNOMBRE LIKE '_AT%';

SELECT *
FROM CLAUSTRO
WHERE FDOMI LIKE '%DE%';

SELECT *
FROM CLAUSTRO
WHERE FDOMI LIKE 'D%';

SELECT *
FROM CLAUSTRO
WHERE FDOMI LIKE 'D%'
ORDER BY FNOMBRE DESC;