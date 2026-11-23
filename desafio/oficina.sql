
CREATE DATABASE oficina;

USE oficina;

-- Tabela clientes
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(200),
    data_cadastro DATE
);

-- Tabela veiculos
CREATE TABLE veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    marca VARCHAR(100) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    ano INT,
    placa VARCHAR(10) NOT NULL,
    cor VARCHAR(50),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id_cliente)
);

-- Tabela servicos
CREATE TABLE servicos (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(100),
    descricao VARCHAR(150),
    preco DECIMAL(10,2)
);

-- Tabela ordens_servico
CREATE TABLE ordens_servico (
    id_ordem INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_veiculo INT,
    descricao VARCHAR(150),
    data_entrada DATE,
    data_saida DATE,
    status VARCHAR(50),
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo)
);

-- Inserir clientes
INSERT INTO clientes (nome, cpf, telefone, endereco, data_cadastro)
VALUES
('Gabriel Santos', '123.456.789-00', '19999999999', 'Rua A, Mococa', '2026-11-23'),
('João Silva', '987.654.321-00', '19988888888', 'Rua B, Mococa', '2026-11-23');

-- Inserir veículos
INSERT INTO veiculos (cliente_id, marca, modelo, ano, placa, cor)
VALUES
(1, 'Fiat', 'Uno', 2015, 'ABC1234', 'Branco'),
(2, 'Chevrolet', 'Onix', 2020, 'DEF5678', 'Preto');

-- Inserir serviços
INSERT INTO servicos (categoria, descricao, preco)
VALUES
('Mecânica', 'Troca de óleo', 150.00),
('Elétrica', 'Revisão elétrica', 200.00),
('Mecânica', 'Troca de freios', 350.00);

-- Inserir ordens de serviço
INSERT INTO ordens_servico
(id_cliente, id_veiculo, descricao, data_entrada, data_saida, status, valor_total)
VALUES
(1, 1, 'Troca de óleo', '2026-11-23', '2026-11-24', 'Concluído', 150.00),
(2, 2, 'Revisão elétrica', '2026-11-23', NULL, 'Em andamento', 200.00);

-- SELECT: Consultar todas as tabelas
SELECT * FROM clientes;

SELECT * FROM veiculos;

SELECT * FROM servicos;

SELECT * FROM ordens_servico;

-- UPDATE: Atualizar somente um dado
UPDATE clientes
SET nome = 'Gabriel Pietro'
WHERE id_cliente = 1;

-- DELETE: Excluir somente um registro de serviço
DELETE FROM servicos
WHERE id_servico = 1;
