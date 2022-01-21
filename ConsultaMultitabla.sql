USE ESCUELAPATITO;

SHOW TABLES;

SELECT *
FROM CURSO;
-- MUESTRA 14 RENGLONES
SELECT *
FROM DEPARTAMENTO;
-- 4 RENGLONES

SELECT *
FROM DEPARTAMENTO
,CURSO;
--14*4=56
 -- 56 RENGLONES
 
SELECT DEPT ,CNO FROM DEPARTAMENTO ,CURSO;

SELECT DEPT ,CNO FROM CURSO ,DEPARTAMENTO;

SELECT CNOMBRE ,DEPT FROM DEPARTAMENTO ,CURSO; ---56

SELECT CNOMBRE ,DEPT FROM DEPARTAMENTO ,CURSO WHERE CDEPT=DEPT;

SELECT cnombre ,ctarifa ,dchfno FROM curso ,departamento  WHERE cdept=dept AND ctarifa>100;


SELECT *FROM CLASE ,CURSO WHERE CLASE.CNO=CURSO.CNO;

SELECT CLASE.CNO FROM CLASE ,CURSO WHERE CLASE.CNO=CURSO.CNO;

SELECT CLASE.CNO ,CURSO.CTARIFA FROM CLASE ,CURSOWHERE CLASE.CNO=CURSO.CNO;

SELECT CLASE.CNO AS NUMERO ,CURSO.CTARIFA AS TARIFA FROM CLASE ,CURSO WHERE CLASE.CNO=CURSO.CNO;


SELECT clase.cno , clase.sec , curso.cnombre , matricula.sno  FROM  matricula , clase , curso WHERE curso.cno=clase.cno AND clase.cno=matricula.cno AND matricula.sec=clase.sec;



SHOW DATABASES;
USE ESCUELAPATITO;
SHOW TABLES;

DESC CLASE;
DESC CLAUSTRO;
DESC CURSO;
DESC DEPARTAMENTO;
DESC ESTUDIANTE;
DESC MATRICULA;
DESC PERSONAL;

SHOW CREATE TABLE CLAUSTRO;   --- DEPARTAMENTO
SHOW CREATE TABLE CURSO;  -- DEPARTAMENTO
SHOW CREATE TABLE ESTUDIANTE; --DEPARTAMENTO


SHOW CREATE TABLE CLASE;     --CURSO
SHOW CREATE TABLE MATRICULA;  -- ESTUDIANTE
SHOW CREATE TABLE PERSONAL;
SHOW CREATE TABLE DEPARTAMENTO;

SELECT *  FROM ESTUDIANTE;  ---4

SELECT * FROM DEPARTAMENTO;  --4

SELECT * FROM MATRICULA;  --9

SELECT * FROM CLAUSTRO;  --7

SELECT * FROM ESTUDIANTE,DEPARTAMENTO WHERE SESP=DEPT;


SELECT * FROM ESTUDIANTE,DEPARTAMENTO,MATRICULA WHERE SESP=DEPTAND ESTUDIANTE.SNO=MATRICULA.SNO;

SELECT * FROM ESTUDIANTE,DEPARTAMENTO,MATRICULA,CLAUSTRO WHERE SESP=DEPT AND ESTUDIANTE.SNO=MATRICULA.SNO AND FDEPT=DEPT;


SELECT FNOMBRE SNOMBRE DEPT FROM ESTUDIANTE ,DEPARTAMENTO ,MATRICULA ,CLAUSTRO  WHERE SESP=DEPT AND ESTUDIANTE.SNO=MATRICULA.SNO AND FDEPT=DEPT;

SELECT CLAUSTRO.FNOMBRE,ESTUDIANTE.SNOMBRE,DEPARTAMENTO.DEPT FROM ESTUDIANTE ,DEPARTAMENTO ,MATRICULA ,CLAUSTRO WHERE SESP=DEPT AND ESTUDIANTE.SNO=MATRICULA.SNO AND FDEPT=DEPT;

SELECT CLAUSTRO.FNOMBRE AS CLAUSTRO ,ESTUDIANTE.SNOMBRE AS ESTUDIANTE ,DEPARTAMENTO.DEPT AS DEPARTAMENTO FROM ESTUDIANTE ,DEPARTAMENTO,MATRICULA ,CLAUSTRO  WHERE SESP=DEPT AND ESTUDIANTE.SNO=MATRICULA.SNO AND FDEPT=DEPT;

SELECT CLAUSTRO.FNOMBRE AS CLAUSTRO ,ESTUDIANTE.SNOMBRE AS ESTUDIANTE ,DEPARTAMENTO.DEPT AS DEPARTAMENTO FROM ESTUDIANTE,DEPARTAMENTO,MATRICULA,CLAUSTRO WHERE SESP=DEPT AND ESTUDIANTE.SNO=MATRICULA.SNO AND FDEPT=DEPT AND DEPARTAMENTO.DEPT='THEO';