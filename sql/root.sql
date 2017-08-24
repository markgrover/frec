CREATE SCHEMA IF NOT EXISTS frec CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'frec_admin'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON frec.* TO 'frec_admin'@'localhost' WITH GRANT OPTION;
GRANT CREATE USER ON *.* TO 'frec_admin'@'localhost';
