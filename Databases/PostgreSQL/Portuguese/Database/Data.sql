-- 1. Criar um banco de dados
-- O comando CREATE DATABASE cria um novo banco de dados.
CREATE DATABASE exemplo_db;

-- 2. Conectar ao banco de dados
-- Após criar o banco de dados, use o comando \c para se conectar ao banco de dados no terminal do psql.
-- \c exemplo_db

-- 3. Criar uma tabela
-- O comando CREATE TABLE é utilizado para criar uma nova tabela no banco de dados.
-- Vamos criar uma tabela de usuários com alguns campos básicos.
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,     -- id será um campo auto-incrementável (serial), utilizado como chave primária
    nome VARCHAR(100) NOT NULL, -- nome é um campo de texto que não pode ser nulo
    email VARCHAR(100) UNIQUE,  -- email será único, ou seja, não pode se repetir
    data_nascimento DATE       -- data_nascimento é um campo de data
);

-- 4. Inserir dados na tabela
-- O comando INSERT INTO é usado para inserir dados na tabela.
INSERT INTO usuarios (nome, email, data_nascimento)
VALUES ('Edward Teach', 'edward@exemplo.com', '1990-05-15'),
       ('Nico Robin', 'nico@exemplo.com', '1985-11-20');

-- 5. Consultar dados
-- O comando SELECT é utilizado para consultar dados da tabela.
-- Neste caso, vamos selecionar todos os campos da tabela "usuarios".
SELECT * FROM usuarios;

-- 6. Atualizar dados
-- O comando UPDATE é utilizado para alterar dados existentes.
-- Neste caso, vamos alterar o email de um usuário específico.
UPDATE usuarios
SET email = 'edward.teach@novoemail.com'
WHERE id = 1;

-- 7. Deletar dados
-- O comando DELETE é utilizado para remover dados da tabela.
-- Neste caso, vamos deletar o usuário com id = 2.
DELETE FROM usuarios
WHERE id = 2;

-- 8. Alterar estrutura da tabela
-- O comando ALTER TABLE é utilizado para alterar a estrutura da tabela.
-- Aqui, vamos adicionar um novo campo para armazenarmos o telefone dos usuários.
ALTER TABLE usuarios
ADD COLUMN telefone VARCHAR(20);

-- 9. Remover a tabela
-- O comando DROP TABLE é utilizado para remover uma tabela do banco de dados.
-- Cuidado! Esse comando apaga a tabela e todos os dados contidos nela.
DROP TABLE usuarios;

-- 10. Excluir o banco de dados
-- Para excluir o banco de dados, usamos o comando DROP DATABASE.
-- ATENÇÃO: Isso removerá todo o banco de dados e seus dados.
DROP DATABASE exemplo_db;
