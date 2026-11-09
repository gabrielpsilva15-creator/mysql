-- 1. Cadastrar 2 novos clientes
INSERT INTO clientes (nome, idade, cidade, estado)
VALUES
('Rafael', 22, 'Mococa', 'SP'),
('Fernanda', 27, 'Campinas', 'SP');


-- 2. Cadastrar 2 novos produtos
INSERT INTO produtos (nome, categoria, preco, quantidade, marca)
VALUES
('Impressora', 'Eletrônicos', 750.00, 10, 'HP'),
('Headset', 'Acessórios', 250.00, 15, 'Logitech');


-- 3. Atualizar o estoque do Headset
UPDATE produtos
SET quantidade = 25
WHERE nome = 'Headset';


-- 4. Excluir o cliente Rafael
DELETE FROM clientes
WHERE nome = 'Rafael';


-- 5. Listar clientes de São Paulo ordenados pelo nome
SELECT * FROM clientes
WHERE estado = 'SP'
ORDER BY nome;


-- 6. Exibir produtos com preço entre 100 e 1000
SELECT * FROM produtos
WHERE preco BETWEEN 100 AND 1000;


-- 7. Mostrar todos os clientes
SELECT * FROM clientes;


-- 8. Mostrar todos os produtos
SELECT * FROM produtos;