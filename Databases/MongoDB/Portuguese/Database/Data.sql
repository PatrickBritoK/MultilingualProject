-- 1. Criar um banco de dados
-- No MongoDB, não precisa de comando explícito para criar o banco de dados. Basta usar o comando 'use' para escolher o banco de dados.
use exemplo_db;

-- 2. Criar uma coleção (equivalente a uma tabela)
-- As coleções são criadas automaticamente quando você insere dados. Aqui mostramos como criar uma coleção explicitamente.
db.createCollection("usuarios");

-- 3. Inserir dados na coleção
-- Vamos inserir dois usuários na coleção "usuarios".
db.usuarios.insertMany([
    { nome: "Edward Teach", email: "edward@exemplo.com", data_nascimento: new Date("1990-05-15") },
    { nome: "Nico Robin", email: "nico@exemplo.com", data_nascimento: new Date("1985-11-20") }
]);

-- 4. Consultar dados
-- Para consultar todos os usuários da coleção "usuarios", usamos o 'find()'.
db.usuarios.find();

-- 5. Atualizar dados
-- Vamos atualizar o e-mail de um usuário com base no ID. 
-- O ID é único para cada documento no MongoDB.
db.usuarios.updateOne(
    { _id: ObjectId("id_do_usuario") },  -- Substitua pelo ID do usuário
    { $set: { email: "edward.teach@novoemail.com" } }
);

-- 6. Deletar dados
-- Para deletar um usuário específico, usamos o 'deleteOne()'.
db.usuarios.deleteOne({ _id: ObjectId("id_do_usuario") }); -- Substitua pelo ID do usuário

-- 7. Alterar estrutura (adicionar um novo campo)
-- No MongoDB, você pode adicionar novos campos diretamente nos documentos com 'updateMany()' ou 'updateOne()'.
-- Vamos adicionar um campo 'telefone' a todos os documentos da coleção.
db.usuarios.updateMany(
    {},  -- Aplica a todos os documentos da coleção
    { $set: { telefone: "" } }  -- Define o campo 'telefone' como vazio para todos
);

-- 8. Remover a coleção
-- Para remover a coleção 'usuarios' completamente, usamos o comando 'drop()'.
db.usuarios.drop();

-- 9. Excluir o banco de dados
-- Para excluir o banco de dados inteiro, usamos o 'dropDatabase()'.
db.dropDatabase();
