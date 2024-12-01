-- 1. Criar um banco de dados
-- O comando CREATE DATABASE cria um novo banco de dados.
CREATE DATABASE exemplo_db;
GO

-- 2. Conectar ao banco de dados
-- No SQL Server, você se conecta ao banco de dados usando o comando USE.
USE exemplo_db;
GO

-- 3. Criar uma tabela
-- O comando CREATE TABLE é utilizado para criar uma nova tabela no banco de dados.
-- Vamos criar uma tabela de usuários com alguns campos básicos.
CREATE TABLE usuarios (
    id INT IDENTITY(1,1) PRIMARY KEY,     -- id será um campo auto-incrementável (IDENTITY), utilizado como chave primária
    nome VARCHAR(100) NOT NULL,            -- nome é um campo de texto que não pode ser nulo
    email VARCHAR(100) UNIQUE,             -- email será único, ou seja, não pode se repetir
    data_nascimento DATE                   -- data_nascimento é um campo de data
);
GO

-- 4. Inserir dados na tabela
-- O comando INSERT INTO é usado para inserir dados na tabela.
INSERT INTO usuarios (nome, email, data_nascimento)
VALUES ('Edward Teach', 'edward@exemplo.com', '1990-05-15'),
       ('Nico Robin', 'nico@exemplo.com', '1985-11-20');
GO

-- 5. Consultar dados
-- O comando SELECT é utilizado para consultar dados da tabela.
-- Neste caso, vamos selecionar todos os campos da tabela "usuarios".
SELECT * FROM usuarios;
GO

-- 6. Atualizar dados
-- O comando UPDATE é utilizado para alterar dados existentes.
-- Neste caso, vamos alterar o email de um usuário específico.
UPDATE usuarios
SET email = 'edward.teach@novoemail.com'
WHERE id = 1;
GO

-- 7. Deletar dados
-- O comando DELETE é utilizado para remover dados da tabela.
-- Neste caso, vamos deletar o usuário com id = 2.
DELETE FROM usuarios
WHERE id = 2;
GO

-- 8. Alterar estrutura da tabela
-- O comando ALTER TABLE é utilizado para alterar a estrutura da tabela.
-- Aqui, vamos adicionar um novo campo para armazenarmos o telefone dos usuários.
ALTER TABLE usuarios
ADD telefone VARCHAR(20);
GO

-- 9. Remover a tabela
-- O comando DROP TABLE é utilizado para remover uma tabela do banco de dados.
-- Cuidado! Esse comando apaga a tabela e todos os dados contidos nela.
DROP TABLE usuarios;
GO

-- 10. Excluir o banco de dados
-- Para excluir o banco de dados, usamos o comando DROP DATABASE.
-- ATENÇÃO: Isso removerá todo o banco de dados e seus dados.
DROP DATABASE exemplo_db;
GO