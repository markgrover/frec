CREATE SCHEMA IF NOT EXISTS frec;
CREATE USER IF NOT EXISTS 'frec_admin'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON frec.* TO 'frec_admin'@'localhost' WITH GRANT OPTION;
GRANT CREATE USER ON *.* TO 'frec_admin'@'localhost';
