-- 1. Criar a tabela
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10,2)
);

-- 2. Inserir registros
INSERT INTO funcionarios (nome, cargo, salario)
VALUES
('Gabriel', 'Programador', 2500.00),
('Joao', 'Gerente', 4000.00),
('Maria', 'Recepcionista', 1800.00),
('Pedro', 'Analista', 3000.00);

-- 3. Atualizar o salário de um funcionário
UPDATE funcionarios
SET salario = 2800.00
WHERE nome = 'Gabriel';

-- 4. Excluir um funcionário
DELETE FROM funcionarios
WHERE nome = 'Pedro';

-- 5. Consultar funcionários com salário maior que 2000
SELECT * FROM funcionarios
WHERE salario > 2000;

-- 6. Mostrar todos os funcionários
SELECT * FROM funcionarios;