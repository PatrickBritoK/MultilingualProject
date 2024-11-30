-- 1. Create a database
-- The CREATE DATABASE command is used to create a new database.
CREATE DATABASE example_db;

-- 2. Connect to the database
-- After creating the database, use the \c command to connect to the database in the psql terminal.
-- \c example_db

-- 3. Create a table
-- The CREATE TABLE command is used to create a new table in the database.
-- Let's create a "users" table with some basic fields.
CREATE TABLE users (
    id SERIAL PRIMARY KEY,     -- id will be an auto-incrementing field (serial), used as the primary key
    name VARCHAR(100) NOT NULL, -- name is a text field that cannot be null
    email VARCHAR(100) UNIQUE,  -- email will be unique, meaning it cannot be duplicated
    birth_date DATE            -- birth_date is a date field
);

-- 4. Insert data into the table
-- The INSERT INTO command is used to insert data into the table.
INSERT INTO users (name, email, birth_date)
VALUES ('John Silva', 'john@example.com', '1990-05-15'),
       ('Maria Oliveira', 'maria@example.com', '1985-11-20');

-- 5. Query data
-- The SELECT command is used to query data from the table.
-- In this case, we will select all columns from the "users" table.
SELECT * FROM users;

-- 6. Update data
-- The UPDATE command is used to modify existing data.
-- Here, we will change the email of a specific user.
UPDATE users
SET email = 'john.silva@newemail.com'
WHERE id = 1;

-- 7. Delete data
-- The DELETE command is used to remove data from the table.
-- In this case, we will delete the user with id = 2.
DELETE FROM users
WHERE id = 2;

-- 8. Alter the table structure
-- The ALTER TABLE command is used to modify the structure of the table.
-- Here, we will add a new column to store the phone number of users.
ALTER TABLE users
ADD COLUMN phone VARCHAR(20);

-- 9. Drop the table
-- The DROP TABLE command is used to remove a table from the database.
-- Be careful! This command will delete the table and all data in it.
DROP TABLE users;

-- 10. Drop the database
-- The DROP DATABASE command is used to remove a database entirely.
-- WARNING: This will delete the entire database and all its contents.
DROP DATABASE example_db;
