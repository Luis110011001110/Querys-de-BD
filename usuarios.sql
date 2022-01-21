-- desde nuestra terminal abrimos los permiso de oracle
sqlplus
-- despues de accesar a los permisos podemos entrar de forma direacta sin registro de usuario o registrando nuestro usuario
-- en caso de accesar con nuestro usuario
user: dbsnmp
password: *************

-- PARA PODER REALIZAR LA PRACTICA SIN PROBLEMAS DEBEMOS DE ACCESAR COMO ADMINISTRADOR  
connect / as sysdba-- acceso para administrador

-- en caso de accesar sin usuario 
sqlplus /nolog

-- una vez dentro consultamos el nombre de nuestra bd y nos conectamos a esta
select value from v$system_parameter where name = 'db_name';
connect / as sysdba

-- una vez consultada la bd en la que estamos consultamos los usuarios existentes en ella.
select table_name from dictionary where table_name like '%users%';
select * from all_users;
select username usuario_oracle, count(username) numero_sesiones from v$session group by username order by numero_sesiones desc;

-- una vez que estamos seguro que no existen estos usuarios damos paso a la creacion
create user usuario1 identified by usuario1;
create user usuario1 identified by usuario2;
create user usuario1 identified by usuario3;

-- consultamos el usuario de forma individual o todos los usuarios que hemos creado
select * from all_users; --todos los usuarios
select * from all_users where username like 'usurio1';

--revisamos el estatus del usuario
select username,account_status from dba_users where username like 'usuario1';

--damos privilegio de session al usuario1
grant create session to usuario1;

--damos privilegio de session al usuario2 y otorgamos permisos para hederar
grant create session to usuario2 with admin option;

--damos privilegio de session al usuario ana
grant create session to ana;

--para cambiar las contraseñas realizamos lo siguiente
alter user usuario1 identified by 123;--usuario1
alter user usuario2 identified by 123;--usuario2
alter user ana identified by 123;--ana

--para realizar bloqueo de usuarios
alter user usuario1 account lock;--bloquear usuario1
alter user ana account lock;--bloquear ana

-- para eliminar al usuario
drop user usuario2;

--para desbloquear usuarios
alter user usuario1 account unlock;--bloquear usuario1
alter user ana account unlock;--bloquear ana

--para el estatus de las cuentas
select username, account_status dba_users;
