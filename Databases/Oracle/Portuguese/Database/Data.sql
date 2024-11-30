-- 1. Criar um banco de dados
-- No Oracle, o banco de dados é criado através da criação de um "tablespace" ou durante a configuração inicial. 
-- No entanto, não existe um comando simples para criar um banco de dados diretamente como no PostgreSQL.

-- 2. Conectar ao banco de dados
-- O Oracle se conecta ao banco de dados com o comando `CONNECT` ou através de um cliente como SQL*Plus ou SQLcl.

-- 3. Criar uma tabela
-- O comando CREATE TABLE no Oracle é semelhante, mas o tipo SERIAL não existe no Oracle. Usamos SEQUENCES para auto incremento.
CREATE TABLE usuarios (
    id NUMBER PRIMARY KEY,     -- id é do tipo NUMBER, usaremos uma sequência para incremento
    nome VARCHAR2(100) NOT NULL, -- nome é um campo de texto que não pode ser nulo
    email VARCHAR2(100) UNIQUE,  -- email será único, ou seja, não pode se repetir
    data_nascimento DATE       -- data_nascimento é um campo de data
);

-- Criar uma sequência para o campo "id" (auto incremento)
CREATE SEQUENCE usuarios_seq
START WITH 1
INCREMENT BY 1;

-- 4. Inserir dados na tabela
-- No Oracle, usamos a sequência criada para inserir valores automaticamente no campo "id".
INSERT INTO usuarios (id, nome, email, data_nascimento)
VALUES (usuarios_seq.NEXTVAL, 'Edward Teach', 'edward@exemplo.com', TO_DATE('1990-05-15', 'YYYY-MM-DD')),
       (usuarios_seq.NEXTVAL, 'Nico Robin', 'nico@exemplo.com', TO_DATE('1985-11-20', 'YYYY-MM-DD'));

-- 5. Consultar dados
-- A consulta é igual ao PostgreSQL.
SELECT * FROM usuarios;

-- 6. Atualizar dados
-- O comando UPDATE é o mesmo no Oracle.
UPDATE usuarios
SET email = 'edward.teach@novoemail.com'
WHERE id = 1;

-- 7. Deletar dados
-- O comando DELETE é o mesmo no Oracle.
DELETE FROM usuarios
WHERE id = 2;

-- 8. Alterar estrutura da tabela
-- No Oracle, usamos o comando ALTER TABLE para adicionar uma coluna, da mesma forma que no PostgreSQL.
ALTER TABLE usuarios
ADD telefone VARCHAR2(20);

-- 9. Remover a tabela
-- O comando DROP TABLE no Oracle é o mesmo do PostgreSQL.
DROP TABLE usuarios;

-- 10. Excluir o banco de dados
-- No Oracle, para excluir um banco de dados, seria necessário apagar o "tablespace" ou realizar a remoção através da administração do banco.
-- Não existe um comando direto DROP DATABASE no Oracle. Isso envolve a exclusão dos dados através de gerenciamento de instâncias ou scripts específicos.
