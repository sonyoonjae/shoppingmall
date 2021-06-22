ALTER SESSION SET "_ORACLE_SCRIPT"=true;

CREATE USER bank IDENTIFIED BY dmsgoddb;
GRANT CONNECT, resource TO bank;

GRANT unlimited tablespace TO bank;