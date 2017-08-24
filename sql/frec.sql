USE frec;
CREATE TABLE IF NOT EXISTS accounts (id BIGINT NOT NULL AUTO_INCREMENT, name CHAR(32), PRIMARY KEY(id));

CREATE TABLE IF NOT EXISTS categories(id BIGINT NOT NULL AUTO_INCREMENT, name CHAR(32), PRIMARY KEY(id));

-- This should have aid and cid as foreign keys?
CREATE TABLE IF NOT EXISTS target_alloc(aid, cid, allocation DECIMAL(5,2));

