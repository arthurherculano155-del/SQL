create database empresa;
use empresa;


CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    salario DECIMAL(10,2),
    departamento VARCHAR(50),
    data_contratacao DATE,
    cidade VARCHAR(100)
);

INSERT INTO funcionarios (nome, idade, salario, departamento, data_contratacao, cidade)
VALUES
('João Silva', 30, 3500.00, 'TI', '2024-01-10', 'São Paulo'),
('Maria Souza', 28, 3200.00, 'RH', '2023-11-05', 'Rio de Janeiro'),
('Carlos Pereira', 35, 4500.00, 'Financeiro', '2022-08-15', 'Belo Horizonte'),
('Ana Oliveira', 26, 3000.00, 'Marketing', '2024-02-20', 'Curitiba'),
('Lucas Santos', 40, 5000.00, 'TI', '2021-06-30', 'Porto Alegre');


Create Table produtos(
id int auto_increment primary key,
nome varchar(100),
preco decimal(10,2),
categoria varchar(100),
estoque int
);

INSERT INTO produtos ( nome, preco, categoria, estoque)
values

('Notebook', 3500.00, 'Eletrônicos', 10),
('Mouse', 80.00, 'Eletrônicos', 50),
('Teclado', 150.00, 'Eletrônicos', 30),
('Cadeira Gamer', 1200.00, 'Móveis', 8),
('Monitor', 900.00, 'Eletrônicos', 15);

select nome, idade 
from funcionarios
where idade between 18 and 22;

select nome, preco
from produtos
where preco between 50 and 500;

select nome 
from funcionarios
where nome like "A%";

select nome 
from produtos
where nome like "%a%";

select nome, cidade
from funcionarios
where cidade in ("São Paulo", "Rio de Janeiro");

select nome, preco
from produtos
where preco between 100 and 300;

select nome, idade
from funcionarios
where idade <> 20;

select nome, categoria
from produtos 
where categoria in(1, 3);

select nome 
from funcionarios
where nome like "%a";

select nome, preco
from produtos
where preco > 100 && preco < 1000;

select nome, preco
from produtos
where preco not in (100 and 300);

select nome 
from funcionarios
where nome like "%e%";

select nome
from produtos
where nome like "e%";

select nome 
from funcionarios
where idade between 20 and 25 and
id in(1, 2);

select nome, preco
from produtos
where preco > 100 and
id in (1, 3, 5);

select *
from produtos
where preco between 10 and 200 and 
id in (2);

select nome 
from funcionarios
where nome like "J" or "M";

select nome 
from funcionarios
where nome like "%o";

select preco
from produtos
where preco between 50 and 500 and 
not id in (1);

select nome 
from funcionarios
where nome like "an" and 
idade between 18 and 25;