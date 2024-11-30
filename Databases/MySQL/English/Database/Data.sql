-- 1. Create a database
-- The CREATE DATABASE command creates a new database.
CREATE DATABASE example_db;

-- 2. Connect to the database
-- In MySQL, to connect to the database after creating it, we use the USE command.
USE example_db;

-- 3. Create a table
-- The CREATE TABLE command is used to create a new table in the database.
-- We will create a users table with some basic fields.
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,     -- id will be an auto-incrementing field (INT), used as the primary key
    name VARCHAR(100) NOT NULL,             -- name is a text field that cannot be null
    email VARCHAR(100) UNIQUE,             -- email will be unique, meaning it cannot be repeated
    birth_date DATE                        -- birth_date is a date field
);

-- 4. Insert data into the table
-- The INSERT INTO command is used to insert data into the table.
INSERT INTO users (name, email, birth_date)
VALUES ('Edward Teach', 'edward@sample.com', '1990-05-15'),
       ('Nico Robin', 'nico@sample.com', '1985-11-20');

-- 5. Query data
-- The SELECT command is used to query data from the table.
-- In this case, we will select all columns from the "users" table.
SELECT * FROM users;

-- 6. Update data
-- The UPDATE command is used to alter existing data.
-- In this case, we will change the email of a specific user.
UPDATE users
SET email = 'edward.teach@newemail.com'
WHERE id = 1;

-- 7. Delete data
-- The DELETE command is used to remove data from the table.
-- In this case, we will delete the user with id = 2.
DELETE FROM users
WHERE id = 2;

-- 8. Alter table structure
-- The ALTER TABLE command is used to modify the table structure.
-- Here, we will add a new column to store users' phone numbers.
ALTER TABLE users
ADD COLUMN phone VARCHAR(20);

-- 9. Drop the table
-- The DROP TABLE command is used to remove a table from the database.
-- Be careful! This command deletes the table and all data contained within it.
DROP TABLE users;

-- 10. Drop the database
-- To drop the database, we use the DROP DATABASE command.
-- WARNING: This will remove the entire database and all its data.
DROP DATABASE example_db;
