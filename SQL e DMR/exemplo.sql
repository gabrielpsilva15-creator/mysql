-- 1. Mostrar nome, cidade e estado dos clientes de SP
SELECT nome, cidade, estado
FROM clientes
WHERE estado = 'SP'
ORDER BY nome;

-- 2. Mostrar todos os produtos
SELECT * FROM produtos;

-- 3. Mostrar cidades sem repetir
SELECT DISTINCT cidade
FROM clientes;

-- 4. Mostrar apenas os 2 primeiros clientes
SELECT * FROM clientes
LIMIT 2;

-- 5. Mostrar clientes de uma cidade específica
SELECT * FROM clientes
WHERE cidade = 'Mococa';

-- 6. Mostrar produtos com preço maior que 100
SELECT * FROM produtos
WHERE preco > 100;

-- 7. Mostrar clientes com idade maior que 18
SELECT * FROM clientes
WHERE idade > 18;

-- 8. Mostrar clientes que não são do estado de SP
SELECT * FROM clientes
WHERE estado <> 'SP';

-- 9. Mostrar a estrutura da tabela produtos
DESCRIBE produtos;