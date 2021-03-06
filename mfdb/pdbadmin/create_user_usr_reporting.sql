-- USER SQL
CREATE USER usr_reporting IDENTIFIED BY "usr_reporting"  
DEFAULT TABLESPACE "REPORT_DATA01"
TEMPORARY TABLESPACE "TEMP";

-- QUOTAS

-- ROLES
GRANT "CONNECT" TO usr_reporting ;
ALTER USER usr_reporting DEFAULT ROLE "CONNECT";

-- SYSTEM PRIVILEGES
GRANT CREATE VIEW TO usr_reporting ;
GRANT CREATE SYNONYM TO usr_reporting ;

