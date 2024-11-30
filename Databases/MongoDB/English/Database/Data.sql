-- 1. Create a database
-- In MongoDB, there's no explicit command to create a database. You just use the 'use' command to select the database.
-- The database will be created automatically when you insert data.
use exemplo_db;

-- 2. Create a collection (equivalent to a table)
-- Collections are created automatically when you insert data. However, here’s how you can explicitly create a collection.
db.createCollection("usuarios");

-- 3. Insert data into the collection
-- Let’s insert two users into the "usuarios" collection.
db.usuarios.insertMany([
    { nome: "Edward Teach", email: "edward@exemplo.com", data_nascimento: new Date("1990-05-15") },
    { nome: "Nico Robin", email: "nico@exemplo.com", data_nascimento: new Date("1985-11-20") }
]);

-- 4. Query data
-- To query all users in the "usuarios" collection, we use the 'find()' command.
db.usuarios.find();

-- 5. Update data
-- We’ll update the email of a specific user based on their ID.
-- The ID is unique for each document in MongoDB.
db.usuarios.updateOne(
    { _id: ObjectId("user_id_here") },  -- Replace with the actual user ID
    { $set: { email: "edward.teach@newemail.com" } }
);

-- 6. Delete data
-- To delete a specific user, we use 'deleteOne()'.
db.usuarios.deleteOne({ _id: ObjectId("user_id_here") }); -- Replace with the actual user ID

-- 7. Alter structure (add a new field)
-- In MongoDB, you can add new fields directly to documents with 'updateMany()' or 'updateOne()'.
-- Let’s add a 'telefone' (phone) field to all documents in the collection.
db.usuarios.updateMany(
    {},  -- Applies to all documents in the collection
    { $set: { telefone: "" } }  -- Sets the 'telefone' field to an empty value for all users
);

-- 8. Remove the collection
-- To remove the 'usuarios' collection completely, use the 'drop()' command.
db.usuarios.drop();

-- 9. Delete the database
-- To delete the entire database, use 'dropDatabase()'.
db.dropDatabase();
