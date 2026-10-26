-- Criar o banco de dados
CREATE DATABASE biblioteca;

-- Selecionar o banco de dados
USE biblioteca;

-- Criar a tabela de leitores
CREATE TABLE leitores (
    id_leitor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf CHAR(11),
    data_cadastro DATE
);

-- Inserir leitores
INSERT INTO leitores (nome, cpf, data_cadastro) VALUES
('Maria Silva', '12345678901', '2026-10-01'),
('Joao Souza', '23456789012', '2026-10-02'),
('Ana Costa', '34567890123', '2026-10-03');

-- Criar a tabela de autores
CREATE TABLE autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    nacionalidade VARCHAR(60),
    data_nascimento DATE
);

-- Inserir autores
INSERT INTO autores (nome, nacionalidade, data_nascimento) VALUES
('Machado de Assis', 'Brasileira', '1839-06-21'),
('Monteiro Lobato', 'Brasileira', '1882-04-18'),
('Jose de Alencar', 'Brasileira', '1829-05-01');

-- Criar a tabela de livros
CREATE TABLE livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150),
    ano_publicacao SMALLINT,
    quantidade INT
);

-- Adicionar a coluna editora
ALTER TABLE livros ADD editora VARCHAR(100);

-- Inserir livros
INSERT INTO livros (titulo, ano_publicacao, quantidade, editora) VALUES
('Dom Casmurro', 1899, 5, 'Escolar'),
('Sitio do Picapau Amarelo', 1920, 3, 'Escolar'),
('Iracema', 1865, 4, 'Escolar');

-- Criar a tabela de empréstimos
CREATE TABLE emprestimos (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    id_leitor INT,
    id_livro INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    FOREIGN KEY (id_leitor) REFERENCES leitores(id_leitor),
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
);

-- Inserir empréstimos
INSERT INTO emprestimos
(id_leitor, id_livro, data_emprestimo, data_devolucao) VALUES
(1, 1, '2026-10-10', '2026-10-20'),
(2, 2, '2026-10-12', '2026-10-22'),
(3, 3, '2026-10-15', NULL);

-- Criar a tabela que relaciona livros e autores
CREATE TABLE livros_autores (
    id_livro INT,
    id_autor INT,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro),
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

-- Relacionar cada livro ao seu autor
INSERT INTO livros_autores VALUES
(1, 1), (2, 2), (3, 3);

-- Mostrar todos os leitores
SELECT * FROM leitores;

-- Mostrar todos os autores
SELECT * FROM autores;

-- Mostrar todos os livros
SELECT * FROM livros;

-- Mostrar todos os empréstimos
SELECT * FROM emprestimos;

-- Mostrar o relacionamento entre livros e autores
SELECT * FROM livros_autores;

-- Alterar a quantidade de todos os livros para 9
UPDATE livros SET quantidade = 9;

-- Cadastrar um leitor de teste
INSERT INTO leitores (nome, cpf, data_cadastro)
VALUES ('Leitor Teste', '99999999999', '2026-10-26');

-- Excluir o leitor de teste pelo CPF
DELETE FROM leitores WHERE cpf = '99999999999';
