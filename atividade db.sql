CREATE DATABASE empresa;
USE empresa;

CREATE TABLE departamento (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    localizacao VARCHAR(100)
);

CREATE TABLE funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    id_departamento INT,
    FOREIGN KEY (id_departamento)
        REFERENCES departamento(id_departamento)
);

INSERT INTO departamento (nome, localizacao) VALUES
('Desenvolvimento', 'Sala 1'),
('Recursos Humanos', 'Sala 2'),
('Financeiro', 'Sala 3');

INSERT INTO funcionario (nome, cargo, salario, id_departamento) VALUES
('Carlos Silva', 'Desenvolvedor', 3500.00, 1),
('Mariana Souza', 'Analista de RH', 3000.00, 2),
('João Santos', 'Analista Financeiro', 3200.00, 3);

SELECT * FROM departamento;

SELECT * FROM funcionario;

SELECT
    funcionario.id_funcionario,
    funcionario.nome,
    funcionario.cargo,
    funcionario.salario,
    departamento.nome AS departamento
FROM funcionario
INNER JOIN departamento
ON funcionario.id_departamento = departamento.id_departamento;

CREATE DATABASE escola;
USE escola;

CREATE TABLE professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    disciplina VARCHAR(100)
);

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    turma VARCHAR(20),
    id_professor INT,
    FOREIGN KEY (id_professor)
        REFERENCES professor(id_professor)
);

INSERT INTO professor (nome, disciplina) VALUES
('Carlos Oliveira', 'Matemática'),
('Mariana Souza', 'Português'),
('João Santos', 'História');

INSERT INTO aluno (nome, turma, id_professor) VALUES
('Gabriel Silva', '2A', 1),
('Ana Pereira', '2B', 2),
('Lucas Costa', '2C', 3);

SELECT * FROM professor;
SELECT * FROM aluno;

SELECT aluno.nome, aluno.turma, professor.nome AS professor, professor.disciplina
FROM aluno
INNER JOIN professor
ON aluno.id_professor = professor.id_professor;

CREATE DATABASE rede_social;
USE rede_social;

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE postagem (
    id_postagem INT AUTO_INCREMENT PRIMARY KEY,
    conteudo VARCHAR(255),
    data_postagem DATE,
    id_usuario INT,
    FOREIGN KEY (id_usuario)
        REFERENCES usuario(id_usuario)
);

INSERT INTO usuario (nome, email) VALUES
('Gabriel Silva', 'gabriel@email.com'),
('Ana Pereira', 'ana@email.com'),
('Lucas Costa', 'lucas@email.com');

INSERT INTO postagem (conteudo, data_postagem, id_usuario) VALUES
('Olá pessoal!', '2026-10-01', 1),
('Bom dia!', '2026-10-02', 2),
('Boa tarde!', '2026-10-03', 3);

SELECT * FROM usuario;
SELECT * FROM postagem;

SELECT usuario.nome, usuario.email, postagem.conteudo, postagem.data_postagem
FROM postagem
INNER JOIN usuario
ON postagem.id_usuario = usuario.id_usuario;