create database controle_EP;
use controle_EP;



CREATE TABLE funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    data_contratacao DATE NOT NULL,
    idade INT NOT NULL
);
select * from funcionarios;
insert into funcionarios (nome, salario, departamento, data_contratacao, idade) 
values
('Ana Silva', 4500.00, 'TI', '2021-03-15', 29),
('Bruno Costa', 3200.00, 'Vendas', '2019-07-10', 34),
('Carlos Souza', 2800.00, 'RH', '2017-05-22', 41),
('Daniela Lima', 5100.00, 'TI', '2022-01-18', 38),
('Eduardo Martins', 3900.00, 'Financeiro', '2020-09-30', 27),
('Fernanda Rocha', 6100.00, 'Vendas', '2018-11-12', 45),
('Gabriel Alves', 2700.00, 'RH', '2016-04-03', 31),
('Amanda Pereira', 4800.00, 'TI', '2023-06-25', 26),
('Ricardo Gomes', 3500.00, 'Financeiro', '2021-12-01', 33),
('Juliana Fernandes', 7200.00, 'Diretoria', '2022-08-14', 42);


CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    estoque INT NOT NULL
);
select * from produtos;
insert into produtos (nome, preco, categoria, estoque) 
values
('Notebook Dell', 3500.00, 'Eletrônicos', 15),
('Smartphone Samsung', 2200.00, 'Eletrônicos', 25),
('Cadeira Escritório', 450.00, 'Moveis', 12),
('Mesa de Jantar', 1200.00, 'Moveis', 8),
('Monitor LG', 900.00, 'Eletrônicos', 18),
('Teclado Mecânico', 350.00, 'Eletrônicos', 30),
('Sofá 3 Lugares', 2000.00, 'Moveis', 5),
('Impressora HP', 800.00, 'Eletrônicos', 10),
('Armário Multiuso', 750.00, 'Moveis', 20),
('Mouse Gamer', 250.00, 'Eletrônicos', 40);


-- 🔹 Funcionários

-- Selecione todos os registros do departamento de TI.
select * from funcionarios
where departamento - 'TI';
-- Selecione todos os registros com salário maior que 4000.
select * from funcionarios
where salario > 4000;
-- Selecione todos os registros com salário entre 3000 e 4000.
select * from funcionarios
where salario between 3000 and 4000;
-- Selecione todos os registros do departamento de Vendas com salário maior que 3300.
select * from funcionarios
where departamento = 'Vendas' and salario > 3300;
-- Selecione todos os registros com idade entre 25 e 35 anos.
select * from funcionarios
where idade between 25 and 35;
-- Selecione todos os registros que NÃO pertencem ao departamento de RH.
select * from funcionarios
where departamento <> 'RH';
-- Selecione todos os registros com salário menor que 3500 OU idade maior que 30.
select * from funcionarios
where salario < 3500 or idade > 30;
-- Selecione todos os registros com data de contratação entre 2019 e 2021.
select * from funcionarios
where data_contratacao between 2019 and 2021;
-- Selecione todos os registros do departamento de TI OU Vendas.
select * from funcionarios
where departamento = 'TI' or 'Vendas';
-- Selecione todos os registros com salário maior que 3800 E idade menor que 35.
select * from funcionarios
where salario > 3800 and idade < 35;

-- 🔹 Produtos

-- Selecione todos os registros com preço entre 300 e 1000.
select * from produtos
where preco between 300 and 1000;
-- Selecione todos os registros da categoria Eletrônicos com estoque entre 10 e 25.
select * from produtos 
where categoria = 'Eletrõnicos' and estoque between 10 and 25;
-- Selecione todos os registros com preço entre 200 e 500 OU estoque maior que 15.
select * from produtos
where preco between 200 and 500 or estoque > 15;
-- Selecione todos os registros que NÃO são da categoria Móveis.
select * from produtos
where categoria <> 'Móveis';
-- Selecione todos os registros com preço menor que 500 E estoque maior que 5.
select * from produtos
where preco < 500 and estoque > 5;
-- Selecione todos os registros com preço entre 800 e 2500 E categoria Eletrônicos.
select * from produtos
where preco between 800 and 2500 and categoria = 'Eletrônicos';
-- Selecione todos os registros com estoque entre 5 e 15 OU preço menor que 400.
select * from produtos
where estoque between 5 and 15 or preco < 400;
-- Selecione todos os registros com preço entre 100 e 1000 E que NÃO sejam da categoria Móveis.
select * from produtos
where preco between 100 and 1000 and  categoria  <> 'Móveis';
-- Selecione todos os registros com estoque entre 10 e 30 E preço maior que 300.
select * from produtos
where estoque between 10 and 30 and preco > 300;
-- Selecione todos os registros com preço entre 200 e 800 OU estoque menor que 10.
select * from produtos
where preco between 200 and 800 or estoque < 10;

-- 🔹 Funcionários – Novos Enunciados

-- 1️⃣ Selecione todos os funcionários com salário acima da média salarial da empresa.
select * from funcionarios
where salario > 2000;
-- 2️⃣ Selecione todos os funcionários do departamento de TI contratados após 2020.
select * from funcionarios
where departamento = 'TI' and data_contratacao > 2020;
-- 3️⃣ Selecione todos os funcionários com idade maior que 40 e salário menor que 5000.
select * from funcionarios
where idade > 40 and salario < 5000;
-- 4️⃣ Selecione todos os funcionários cujo nome começa com a letra “A”.
select * from funcionarios
where nome like 'A%';
-- 5️⃣ Selecione todos os funcionários contratados antes de 2018 ou que pertençam ao departamento de RH.
select * from funcionarios
where data_contratacao < 2018 or departamento = 'RH';
-- 6️⃣ Selecione todos os funcionários com salário entre 2500 e 4500, exceto os do departamento de Vendas.
select * from funcionarios
where salario between 2500 and 4500 and departamento <> 'Vendas';
-- 7️⃣ Selecione todos os funcionários que possuem mais de 30 anos e não pertencem ao departamento de TI.
select * from funcionarios
where idade > 30 and departamento <> 'TI';
-- 8️⃣ Selecione todos os funcionários do departamento de Vendas com idade entre 25 e 40 anos.
select * from funcionarios
where departamento = 'Vendas' and idade between 25 and 40;
-- 9️⃣ Selecione todos os funcionários com salário maior que 6000 ou idade menor que 23.
select * from funcionarios
where salario > 6000 or idade < 23;
-- 10🔟 Selecione todos os funcionários contratados no ano de 2022.
select * from funcionarios
where data_contratacao = 2022;