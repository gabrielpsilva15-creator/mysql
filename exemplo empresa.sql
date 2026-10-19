USE empresa;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade VARCHAR(100),
    estado CHAR(2),
    telefone VARCHAR(20)
);

INSERT INTO clientes (nome, email, cidade, estado, telefone)
VALUES
('Maria Silva', 'maria@gmail.com', 'São Paulo', 'SP', '119888777'),
('João Souza', 'joao@gmail.com', 'São Paulo', 'SP', '199996666'),
('Ana Costa', 'ana@gmail.com', 'São Paulo', 'SP', '199345667');

USE empresa;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);


INSERT INTO produtos (nome, preco, estoque)
VALUES
('Notebook Dell', 3500.00, 10),
('Mouse Gamer', 150.00, 25),
('Teclado Mecânico', 280.00, 15),
('Monitor 24 polegadas', 850.00, 8),
('Cadeira Gamer', 1200.00, 5),
('Notebook Dell Gamer', 5200.00, 6);

SELECT * FROM produtos;

CREATE TABLE itens_pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2)
);


INSERT INTO itens_pedidos
(id_pedido, id_produto, quantidade, preco_unitario)
VALUES
(1, 1, 1, 3500.00),
(1, 2, 2, 150.00),
(2, 3, 1, 280.00),
(2, 4, 2, 850.00),
(3, 5, 1, 1200.00),
(3, 6, 1, 5200.00);

UPDATE produtos
SET preco = preco * 1.10
WHERE nome LIKE '%gamer%';

SELECT * FROM itens_pedidos;