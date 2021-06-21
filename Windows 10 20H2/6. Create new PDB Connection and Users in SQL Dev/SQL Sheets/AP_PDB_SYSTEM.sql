/* 
Initially we have established the connection to the Pluggable Database (XEPDB1) and not the Container Database (xe)
But this SYSTEM user is not recommended for development purposes
Thereby, a new user CapgDB is created with password CapgDB99
*/
-- SELECT * FROM all_tables;

DROP USER CapgDB;

CREATE USER CapgDB 
IDENTIFIED BY CapgDB99;

-- Give the connect and session privilege to CapgDB
GRANT CONNECT TO CapgDB;
GRANT CREATE SESSION TO CapgDB; 