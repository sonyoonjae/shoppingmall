ALTER SESSION SET "_ORACLE_SCRIPT"=true;

CREATE USER mall IDENTIFIED BY tyvldahfdb;
GRANT CONNECT, resource TO mall;

GRANT unlimited tablespace TO mall;