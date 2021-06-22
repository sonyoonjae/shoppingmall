ALTER SESSION SET "_ORACLE_SCRIPT"=true;

CREATE USER agency IDENTIFIED BY wndrowkdb;
GRANT CONNECT, resource TO agency;

GRANT unlimited tablespace TO agency;