CREATE USER IF NOT EXISTS 'frec'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT, INSERT, DELETE, UPDATE ON frec.* TO 'frec'@'localhost';

-- Create necessary tables
USE frec;
CREATE TABLE IF NOT EXISTS account 
  ( 
     id   BIGINT NOT NULL auto_increment, 
     name CHAR(32) NOT NULL, 
     PRIMARY KEY(id) 
  ); 

CREATE TABLE IF NOT EXISTS category 
  ( 
     id   BIGINT NOT NULL auto_increment, 
     name CHAR(32) NOT NULL, 
     PRIMARY KEY(id) 
  ); 

CREATE TABLE IF NOT EXISTS target_alloc 
  ( 
     aid        BIGINT NOT NULL,
     cid        BIGINT NOT NULL,
     allocation DECIMAL(5, 2) NOT NULL, 
     CONSTRAINT fk_account FOREIGN KEY (aid) REFERENCES account(id), 
     CONSTRAINT fk_category FOREIGN KEY (cid) REFERENCES category(id) 
  ); 
