-- Database: Agenda_Contatos 

-- DROP DATABASE IF EXISTS "Agenda_Contatos";

CREATE DATABASE "Agenda_Contatos"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE Contatos (
    IdContato SERIAL PRIMARY KEY NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Telefone VARCHAR(15) NOT NULL,
    Grupo VARCHAR(100),
    Favorito BOOLEAN DEFAULT FALSE
);

INSERT INTO Contatos (Nome, Email, Telefone, Grupo) VALUES
    ('João Vitor', 'joaovitormine@gmail.com', '123456789', 'Família'),
    ('Letícia', 'leticiamilan.dev@gmail.com', '987654320', 'Pessoal'),
    ('Larissa', 'larissa@gmail.com', '123123123', 'Família'),
    ('Mãe', 'mae@gmail.com', '124124124', 'Família'),
    ('Pai', 'pai@gmail.com', '125125125', 'Família'),
    ('Yuri', 'yuriguioto@gmail.com', '333333333', 'Amigos'),
    ('Samara', 'samarabergamo@gmail.com', '444444444', 'Amigos'),
    ('Fernanda', 'fernandadanca@gmail.com', '555555555', 'Amigos'),
    ('Pedro', 'pedrogeografia@gmail.com', '666666666', 'Amigos'),
    ('Gustavo', 'gustavo@gmail.com', '777777777', ''),
    ('Humberto', 'humberto@gmail.com', '888888888', 'Faculdade'),
    ('Igor', 'igor@gmail.com', '999999991', 'Trabalho'),
    ('João', 'joao@gmail.com', '101010101', 'Família'),
    ('Kleber', 'kleber@gmail.com', '111111111', 'Amigos'),
    ('Luisa', 'luisa@gmail.com', '121212121', 'Faculdade'),
    ('Marcela', 'marcela@gmail.com', '131313131', 'Trabalho'),
    ('Natalia', 'natalia@gmail.com', '141414141', 'Família'),
    ('Otavio', 'otavio@gmail.com', '151515151', 'Amigos'),
    ('Paula', 'paula@gmail.com', '161616161', 'Faculdade'),
    ('Quintino', 'quintino@gmail.com', '171717171', 'Trabalho'),
    ('Rafaela', 'rafaela@gmail.com', '181818181', 'Família'),
    ('Sandra', 'sandra@gmail.com', '191919191', 'Amigos'),
    ('Thiago', 'thiago@gmail.com', '202020202', 'Faculdade'),
    ('Ulisses', 'ulisses@gmail.com', '212121212', 'Trabalho'),
    ('Vitoria', 'vitoria@gmail.com', '222222222', 'Família'),
    ('Wagner', 'wagner@gmail.com', '232323232', 'Amigos'),
    ('Xavier', 'xavier@gmail.com', '242424242', 'Faculdade'),
    ('Yasmin', 'yasmin@gmail.com', '252525252', 'Trabalho'),
    ('Zeca', 'zeca@gmail.com', '262626262', 'Família'),
    ('Ana', 'ana@gmail.com', '272727272', 'Amigos'),
    ('Bianca', 'bianca@gmail.com', '282828282', 'Faculdade'),
    ('Carlos', 'carlos@gmail.com', '292929292', 'Trabalho'),
    ('Daniela', 'daniela@gmail.com', '303030303', 'Família'),
    ('Eduardo', 'eduardo@gmail.com', '313131313', 'Amigos'),
    ('Fernanda', 'fernanda@gmail.com', '323232323', 'Faculdade'),
    ('Gabriel', 'gabriel@gmail.com', '333333333', 'Trabalho'),
    ('Helena', 'helena@gmail.com', '343434343', 'Família'),
    ('Isabela', 'isabela@gmail.com', '353535353', 'Amigos'),
    ('Jorge', 'jorge@gmail.com', '363636363', 'Faculdade'),
    ('Karen', 'karen@gmail.com', '373737373', 'Trabalho'),
    ('Lucas', 'lucas@gmail.com', '383838383', 'Família'),
    ('Mariana', 'mariana@gmail.com', '393939393', 'Amigos'),
    ('Nelson', 'nelson@gmail.com', '404040404', 'Faculdade'),
    ('Olivia', 'olivia@gmail.com', '414141414', ''),
    ('Pedro', 'pedro@gmail.com', '424242424', 'Família'),
    ('Queiroz', 'queiroz@gmail.com', '434343434', 'Amigos'),
    ('Ricardo', 'ricardo@gmail.com', '444444444', 'Faculdade'),
    ('Sara', 'sara@gmail.com', '454545454', 'Trabalho'),
    ('Tatiana', 'tatiana@gmail.com', '464646464', 'Família'),
    ('Umberto', 'umberto@gmail.com', '474747474', 'Amigos'),
    ('Valentina', 'valentina@gmail.com', '484848484', 'Faculdade'),
    ('William', 'william@gmail.com', '494949494', '');


-- Exibir todos os contatos
SELECT * FROM Contatos;

-- Buscar por nome
SELECT * FROM Contatos WHERE Nome = 'João Vitor';

-- Buscar por email
SELECT * FROM Contatos WHERE Email = 'fernandadanca@gmail.com';

-- Buscar por grupo
SELECT * FROM Contatos WHERE Grupo = 'Amigos';

-- Incluir a opção de favorito
UPDATE Contatos SET Favorito = TRUE WHERE IdContato = 1;

-- Buscar por favoritos
SELECT * FROM Contatos WHERE Favorito = TRUE;

-- Listar contatos por ordem alfabética
SELECT * FROM Contatos ORDER BY Nome;

-- Listar nome e telefone do contato que tiver sa no nome
SELECT Nome, Telefone FROM Contatos WHERE Nome LIKE '%sa%';

--Listar nome dos contatos que o telefone terminar com 0 ou 9
SELECT Nome FROM Contatos WHERE Telefone LIKE '%0' OR Telefone LIKE '%9';

-- Atualizar registros
UPDATE Contatos SET Telefone = '999999999' WHERE IdContato = 2;

-- Atualizar grupo
UPDATE Contatos SET Grupo = 'Colegas' WHERE Grupo = 'Trabalho';

-- Apagar contato
DELETE FROM Contatos WHERE IdContato = 10;

-- Definir mais contatos como favoritos
UPDATE Contatos SET Favorito = TRUE WHERE IdContato IN (2, 3, 4, 5, 6);

-- Remover contato favorito
UPDATE Contatos SET Favorito = FALSE WHERE IdContato = 2;

-- Remover contatos sem grupo atribuído
DELETE FROM Contatos WHERE Grupo IS NULL;

-- Remover contatos por nomes
DELETE FROM Contatos WHERE Nome IN ('Kleber', 'Zeca', 'Gabriel', 'Sara', 'Natalia');

-- Adicionar coluna de Endereço
ALTER TABLE Contatos ADD COLUMN Endereco VARCHAR(200);

-- Atualizar email de 10 contatos como vazio
UPDATE Contatos SET Email = '' WHERE IdContato BETWEEN 11 AND 21;

-- Contar quantidade de contatos
SELECT COUNT(*) AS TotalContatos FROM Contatos;

-- Filtrar do grupo família que começam com a letra J
SELECT * FROM Contatos WHERE Nome LIKE 'J%' AND Grupo = 'Família';

-- Remover contatos do grupo faculdade
DELETE FROM Contatos WHERE Grupo = 'Faculdade';

-- Apagar tabela
DROP TABLE Contatos;


