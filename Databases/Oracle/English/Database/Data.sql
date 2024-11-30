-- 1. Create a database
-- In Oracle, databases are created through the creation of a "tablespace" or during initial setup.
-- There is no direct command like CREATE DATABASE in PostgreSQL. It is managed during installation and configuration.

-- 2. Connect to the database
-- In Oracle, you connect to the database using the `CONNECT` command or through clients like SQL*Plus or SQLcl.

-- 3. Create a table
-- The CREATE TABLE command in Oracle is similar, but the SERIAL type doesn't exist. We use SEQUENCES for auto-increment.
CREATE TABLE usuarios (
    id NUMBER PRIMARY KEY,     -- 'id' is of type NUMBER, we will use a sequence for auto-increment
    nome VARCHAR2(100) NOT NULL, -- 'nome' is a text field that cannot be NULL
    email VARCHAR2(100) UNIQUE,  -- 'email' is unique, meaning it cannot be repeated
    data_nascimento DATE       -- 'data_nascimento' is a date field
);

-- Create a sequence for the 'id' field (auto-increment)
CREATE SEQUENCE usuarios_seq
START WITH 1
INCREMENT BY 1;

-- 4. Insert data into the table
-- In Oracle, we use the created sequence to automatically insert values into the 'id' field.
INSERT INTO usuarios (id, nome, email, data_nascimento)
VALUES (usuarios_seq.NEXTVAL, 'Edward Teach', 'edward@exemplo.com', TO_DATE('1990-05-15', 'YYYY-MM-DD')),
       (usuarios_seq.NEXTVAL, 'Nico Robin', 'nico@exemplo.com', TO_DATE('1985-11-20', 'YYYY-MM-DD'));

-- 5. Query data
-- The SELECT query is the same in Oracle.
SELECT * FROM usuarios;

-- 6. Update data
-- The UPDATE command is the same in Oracle.
UPDATE usuarios
SET email = 'edward.teach@novoemail.com'
WHERE id = 1;

-- 7. Delete data
-- The DELETE command is the same in Oracle.
DELETE FROM usuarios
WHERE id = 2;

-- 8. Alter the table structure
-- In Oracle, we use the ALTER TABLE command to add a column, just like in PostgreSQL.
ALTER TABLE usuarios
ADD telefone VARCHAR2(20);

-- 9. Drop the table
-- The DROP TABLE command in Oracle is the same as in PostgreSQL.
DROP TABLE usuarios;

-- 10. Drop the database
-- In Oracle, to drop a database, you would need to remove the "tablespace" or perform the removal through database administration.
-- There is no direct DROP DATABASE command in Oracle. This involves deleting the data through instance management or specific scripts.
