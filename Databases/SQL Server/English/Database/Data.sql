-- 1. Create a database
-- The CREATE DATABASE command creates a new database.
CREATE DATABASE example_db;
GO

-- 2. Connect to the database
-- In SQL Server, you connect to the database using the USE command.
USE example_db;
GO

-- 3. Create a table
-- The CREATE TABLE command is used to create a new table in the database.
-- Here, we create a "users" table with some basic fields.
CREATE TABLE users (
    id INT IDENTITY(1,1) PRIMARY KEY,     -- id will be an auto-incrementing field (IDENTITY), used as the primary key
    name VARCHAR(100) NOT NULL,            -- name is a text field that cannot be null
    email VARCHAR(100) UNIQUE,             -- email will be unique, meaning it cannot repeat
    birth_date DATE                        -- birth_date is a date field
);
GO

-- 4. Insert data into the table
-- The INSERT INTO command is used to insert data into the table.
INSERT INTO users (name, email, birth_date)
VALUES ('Edward Teach', 'edward@sample.com', '1990-05-15'),
       ('Nico Robin', 'nico@sample.com', '1985-11-20');
GO

-- 5. Query data
-- The SELECT command is used to query data from the table.
-- In this case, we will select all columns from the "users" table.
SELECT * FROM users;
GO

-- 6. Update data
-- The UPDATE command is used to modify existing data.
-- In this case, we will update the email of a specific user.
UPDATE users
SET email = 'edward.teach@newemail.com'
WHERE id = 1;
GO

-- 7. Delete data
-- The DELETE command is used to remove data from the table.
-- In this case, we will delete the user with id = 2.
DELETE FROM users
WHERE id = 2;
GO

-- 8. Alter the table structure
-- The ALTER TABLE command is used to modify the table structure.
-- Here, we will add a new column to store users' phone numbers.
ALTER TABLE users
ADD phone VARCHAR(20);
GO

-- 9. Drop the table
-- The DROP TABLE command is used to remove a table from the database.
-- Warning! This command deletes the table and all its data.
DROP TABLE users;
GO

-- 10. Drop the database
-- To delete the database, we use the DROP DATABASE command.
-- WARNING: This will remove the entire database and all its data.
DROP DATABASE example_db;
GO
