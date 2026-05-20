create database empresa;
use empresa;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    salario DECIMAL(10,2),
    departamento VARCHAR(50),
    data_contratacao DATE
);

-- Tabela Produtos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    produto decimal (10,2),
    categoria VARCHAR(50),
    estoque INT,
    data_contratacao date
);

INSERT INTO funcionarios ( nome, idade, salario, departamento, data_contratacao)
VALUES

 ('João Silva', 30, 3500.00, 'TI', '2024-01-10'),
('Maria Souza', 28, 3200.00, 'RH', '2023-11-05'),
('Carlos Pereira', 35, 4500.00, 'Financeiro', '2022-08-15'),
('Ana Oliveira', 26, 3000.00, 'Marketing', '2024-02-20'),
('Lucas Santos', 40, 5000.00, 'TI', '2021-06-30');


INSERT INTO produtos ( nome, preco, categoria, estoque)
values

('Notebook', 3500.00, 'Eletrônicos', 10),
('Mouse', 80.00, 'Eletrônicos', 50),
('Teclado', 150.00, 'Eletrônicos', 30),
('Cadeira Gamer', 1200.00, 'Móveis', 8),
('Monitor', 900.00, 'Eletrônicos', 15);



SELECT * FROM funcionarios
ORDER BY nome;

SELECT * FROM funcionarios
ORDER BY idade ASC;

SELECT * FROM funcionarios
ORDER BY nome DESC;

SELECT produto, preco
FROM produtos
ORDER BY preco ASC;

SELECT produto, preco
FROM produtos
ORDER BY preco DESC;

SELECT nome, salario 
FROM funcionarios
ORDER BY salario ASC;

SELECT * FROM funcionarios 
ORDER BY data_contratacao ASC;

SELECT * FROM produtos
ORDER BY nome;

SELECT
    nome,
    categoria,
    preco
FROM
    produtos
ORDER BY
    categoria ASC,
    preco ASC;
    
SELECT nome, departamento
FROM funcionarios
ORDER BY departamento ASC; 

SELECT nome, salario
FROM funcionarios
WHERE departamento = 'TI'
ORDER BY salario DESC;

SELECT * FROM produtos
WHERE estoque> 10
ORDER BY preco ASC;

SELECT nome, departamento
FROM funcionarios
ORDER BY departamento ASC, nome ASC;

SELECT * FROM  funcionarios
ORDER BY idade ASC;

SELECT *
FROM produtos
ORDER BY estoque ASC;

SELECT nome, preco
FROM produtos
ORDER BY preco ASC; 

SELECT *
FROM funcionarios
WHERE salario > 3000
ORDER BY salario DESC;  

SELECT *
FROM Produtos
ORDER BY Categoria, Nome;

SELECT *
FROM Funcionarios
ORDER BY data_contratacao DESC;

SELECT *
FROM Produtos
ORDER BY Preco, Nome;

SELECT salario
FROM funcionarios
ORDER BY salario DESC;

SELECT nome
FROM funcionarios
ORDER BY nome DESC;


SELECT nome, idade
FROM funcionarios
ORDER BY idade ASC;

SELECT departamento, idade
FROM funcionarios
ORDER BY departamento ASC,
idade ASC;

Select nome, idade 
FROM funcionarios
where idade > 30
ORDER BY idade;

SELECT estoque
FROM produtos
ORDER BY estoque ASC;

SELECT nome, preco 
FROM  produtos
ORDER BY nome DESC;

SELECT categoria
FROM produtos
Where categoria = 'Eletrônicos'
order by preco;

SELECT  categoria, preco
FROM produtos
WHERE preco > 500
ORDER BY preco;

SELECT categoria, estoque
FROM produtos
ORDER BY estoque DESC;




