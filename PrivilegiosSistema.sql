sqlplus /nolog
conn /as sysdba
SELECT USERNAME FROM DBA_USERS WHERE USERNAME LIKE '%ANA%';
SELECT USERNAME FROM DBA_USERS WHERE USERNAME LIKE '%BENITO%';
SELECT USERNAME FROM DBA_USERS WHERE USERNAME LIKE '%CAROL%';
SELECT USERNAME FROM DBA_USERS WHERE USERNAME LIKE '%DANIEL%';
SELECT USERNAME FROM DBA_USERS WHERE USERNAME LIKE '%ELENA%';
SELECT USERNAME FROM DBA_USERS WHERE USERNAME LIKE '%FER%';



 SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE ='ANA';
 SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE ='BENITO';
 SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE ='ANA';
 SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE ='CAROL';
 SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE ='DANIEL';
SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE ='ANA';

CONN ANA/123;

SELECT USERNAME FROM DBA_USERS WHERE USERNAME LIKE '%ELENA%';
SELECT USERNAME FROM ALL_USERS WHERE USERNAME LIKE '%ELENA%';
SELECT USERNAME FROM ALL_USERS WHERE USERNAME LIKE '%FER%';

CREATE USER ELENA IDENTIFIED BY 123;
CREATE USER FER IDENTIFIED BY 123;
SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE ='ANA';
SELECT * FROM ALL_SYS_PRIVS WHERE GRANTEE ='ANA';
SELECT * FROM USER_SYS_PRIVS WHERE GRANTEE ='ANA';

 CONN /AS SYSDBA
 GRANT CREATE TABLE TO ELENA;
 GRANT CREATE SESSION TO ELENA;
 GRANT CREATE VIEW TO ELENA;
 SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE ='ANA';
 REVOKE CREATE SESSION FROM ELENA;
 REVOKE CREATE TABLE FROM ELENA;
 REVOKE CREATE VIEW FROM ELENA;
 SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE ='ANA';
 
 CONN BENITO/123;
 GRANT CREATE TABLE TO FER;
 CONN ELENA/123;
 SELECT * FROM USER_SYS_PRIVS ;
 CREATE TABLE ESTUDIANTE ( NOMBRE VARCHAR(20));
 ALTER TABLE ESTUDIANTE ADD NOCUENTA INT;
 DROP TABLE ESTUDIANTE;
 
 CONN /AS SYSDBA
 GRANT CREATE SESSION TO FER;
SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE ='FER';
REVOKE CREATE TABLE FROM FER;

CONN FER/123
CREATE TABLE ESTUDIANTE ( NOMBRE VARCHAR(20));

CONN CAROL/123;
 SELECT * FROM USER_SYS_PRIVS;
 CREATE TABLE FER.ESTUDIANTE (NOMBRE VARCHAR(20));
 CREATE TABLE ELENA.ESTUDIANTE (NOMBRE VARCHAR(20));
 
 CONN ELENA/123;
 ALTER TABLE ESTUDIANTE ADD NOCUENTA INT;
 
 CONN FER/123
 SELECT * FROM USER_SYS_PRIVS;
  DROP TABLE ESTUDIANTE;
  SELECT TABLE_NAME FROM DICTIONARY WHERE TABLE_NAME LIKE '%TABLES%';
   SELECT TABLE_NAME FROM USER_TABLES;
DROP TABLE ESTUDIANTE;
DROP TABLE ELENA.ESTUDIANTE;

CONN ELENA/123;
SELECT TABLE_NAME FROM USER_TABLES;

CONN FER/123
ALTER TABLE ANA.ESTUDIANTE ADD TEL INT;
