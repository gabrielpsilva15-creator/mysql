select NOW();
select CURDATE();
select CURTIME();
select YEAR(NOW());
select MONTH(NOW());
select DAY(NOW());
SELECT DATE_ADD(NOW(), INTERVAL 7 DAY);
SELECT DATEDIFF(NOW(), '2010-03-23');


SELECT ABS(-10);
SELECT ROUND(3.14159, 2);
SELECT CEIL(3.2);
SELECT FLOOR(3.8);
SELECT POW(2, 3);
SELECT RAND();


-- Transforma o texto em letras maiúsculas
SELECT UPPER('Gabriel');

-- Transforma o texto em letras minúsculas
SELECT LOWER('GABRIEL');

-- Retorna a quantidade de bytes do texto
SELECT LENGTH('Gabriel');

-- Junta dois textos
SELECT CONCAT('Gabriel', ' ', 'Silva');

-- Extrai os primeiros 4 caracteres
SELECT SUBSTRING('Gabriel', 1, 4);

-- Substitui Gabriel 
SELECT REPLACE('Gabriel', 'Gabriel', '');

-- Remove os espaços das extremidades
SELECT TRIM('   Gabriel   ');



SELECT COUNT(*) AS total_clientes FROM clientes;
SELECT SUM(preco) FROM produtos;
SELECT AVG(preco) FROM produtos;
SELECT MIN(preco) FROM produtos;
SELECT MAX(preco) FROM produtos;

alter table produtos add column categoria varchar(50);

-- Calcula a média dos preços agrupados por categoria

SELECT categoria,
    AVG(preco) AS media_preco
FROM produtos
GROUP BY categoria;

-- Mostra o menor e o maior preço de cada categoria
SELECT
    categoria,
    MIN(preco) AS menor_preco,
    MAX(preco) AS maior_preco
FROM produtos
GROUP BY categoria;
