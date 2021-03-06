SELECT TABLE_NAME
FROM USER_TABLES;

DESC EMPLOYEES;

SELECT EMPLOYEE_ID
		,FIRST_NAME
		,LAST_NAME
		,EMAIL
		,PHONE_NUMBER
		,HIRE_DATE
		,JOB_ID
		,SALARY
		,COMMISSION_PCT
		,MANAGER_ID
		,DEPARTMENT_ID
FROM EMPLOYEES;

CREATE VIEW EMPLEADOVISTA
AS SELECT EMPLOYEE_ID
		,FIRST_NAME
		,LAST_NAME
		,EMAIL
		,PHONE_NUMBER
		,HIRE_DATE
		,JOB_ID
		,SALARY
		,COMMISSION_PCT
		,MANAGER_ID
		,DEPARTMENT_ID
FROM EMPLOYEES;

SELECT TABLE_NAME
FROM USER_TABLES;

SELECT TABLE_NAME FROM DICTIONARY
WHERE TABLE_NAME LIKE '%OBJECTS';

DESC USER_OBJECTS;

SELECT OBJECT_NAME
		,OBJECT_TYPE
FROM USER_OBJECTS
WHERE OBJECT_TYPE='VIEW';

DESC EMPLEADOVISTA;
DESC EMPLOYEES;

CREATE TABLE EMPLEADOCOPIA AS 
SELECT EMPLOYEE_ID
		,FIRST_NAME
		,LAST_NAME
		,EMAIL
		,PHONE_NUMBER
		,HIRE_DATE
		,JOB_ID
		,SALARY
		,COMMISSION_PCT
		,MANAGER_ID
		,DEPARTMENT_ID
FROM EMPLOYEES;

SELECT TABLE_NAME
FROM USER_TABLES;

DESC EMPLEADOCOPIA;
DESC EMPLOYEES;

DESC USER_CONSTRAINTS;

SELECT CONSTRAINT_NAME
		,CONSTRAINT_TYPE
		,TABLE_NAME
FROM USER_CONSTRAINTS;
WHERE TABLE_NAME = 'EMPLOYEES';

SELECT CONSTRAINT_NAME
		,CONSTRAINT_TYPE
		,TABLE_NAME
FROM USER_CONSTRAINTS;
WHERE TABLE_NAME = 'EMPLEADOCOPIA';


SELECT EMPLOYEE_ID
		,FIRST_NAME
		,LAST_NAME
		,EMAIL
		,PHONE_NUMBER
		,HIRE_DATE
		,JOB_ID
		,SALARY
		,COMMISSION_PCT
		,MANAGER_ID
		,DEPARTMENT_ID
FROM EMPLEADOCOPIA;

DELETE FROM EMPLEADOCOPIA;

SELECT EMPLOYEE_ID
		,FIRST_NAME
		,LAST_NAME
		,EMAIL
		,PHONE_NUMBER
		,HIRE_DATE
		,JOB_ID
		,SALARY
		,COMMISSION_PCT
		,MANAGER_ID
		,DEPARTMENT_ID
FROM EMPLEADOCOPIA;

SELECT EMPLOYEE_ID
		,FIRST_NAME
		,LAST_NAME
		,EMAIL
		,PHONE_NUMBER
		,HIRE_DATE
		,JOB_ID
		,SALARY
		,COMMISSION_PCT
		,MANAGER_ID
		,DEPARTMENT_ID
FROM EMPLOYEES;

DROP TABLE EMPLEADOCOPIA;

CREATE TABLE EMPLEADOCOPIA (ID, NOMBRE, APELLIDO)AS 
SELECT EMPLOYEE_ID
		,FIRST_NAME
		,LAST_NAME
FROM EMPLOYEES;

DESC EMPLEADOCOPIA;

SELECT ID
		,NOMBRE
		,APELLIDO
FROM EMPLEADOCOPIA;

CREATE TABLE EMPLEADOSALARIO AS 
SELECT EMPLOYEE_ID AS ID
		,FIRST_NAME AS NOMBRE
		,LAST_NAME AS APELLIDO
		,SALARY AS SALARIO
FROM EMPLOYEES
WHERE SALARY>4000;

DESC EMPLEADOSALARIO;

SELECT ID
		,NOMBRE
		,APELLIDO
		,SALARIO
FROM EMPLEADOSALARIO;

8000 A 10000

SELECT ID
		,NOMBRE
		,APELLIDO
		,SALARIO
FROM EMPLEADOSALARIO
WHERE SALARY >= 8000 AND SALARIO <= 10000;

DESC EMPLEADOSALARIO;

SELECT ID
		,NOMBRE
		,APELLIDO
		,SALARIO
FROM EMPLEADOSALARIO
WHERE SALARY >= 8000 AND SALARIO <= 10000;


CREATE VIEW VISTASALARIO AS
SELECT ID
		,NOMBRE
		,APELLIDO
		,SALARIO
FROM EMPLEADOSALARIO
WHERE SALARY >= 8000 AND SALARIO <= 10000;

INSERT INTO VISTASALARIO VALUES ('ANA', 9000);
SELECT * FROM EMPLEADOSALARIO;
SELECT * FROM VISTASALARIO;
INSERT INTO VISTASALARIO VALUES ('ANITA', 19000);
SELECT * FROM EMPLEADOSALARIO;
SELECT * FROM VISTASALARIO;

DELETE FROM VISTASALARIO;
SELECT * FROM VISTASALARIO;

DROP VIEW VISTASALARIO;
SELECT * FROM EMPLEADOSALARIO;
UPDATE FROM EMPLEADOCOPIA SET NOMBRE='LUIS';
SELECT * FROM EMPLEADOCOPIA;

DELETE FROM EMPLEADOCOPIA WHERE 

SELECT MIN(SALARY) AS SALARIO
	,DEPARTMENT_ID AS DEPARTAMENTO
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;#ORDER BY 1;ORDER BY SALARIO;

SELECT SALARY
FROM EMPLOYEES
ORDER BY FIRST_NAME;#ORDER BY SALARY 

DESC EMPLOYEES;

SELECT SALARY
FROM EMPLOYEES
ORDER BY SALARY DESC;




#REPASO
CREATE VIEW SALARIOMINIMO
AS
SELECT DEPARTMENT_ID
	,MIN (SALARY) AS DEPARTAMENTO
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

SELECT E.FIRST_NAME
		,E.SALARY
FROM EMPLOYEES E
,SALARIOMINIMO S
WHERE E.SALARY=SALARIO.SALARIO; #ORDER BY FIRST_NAME
