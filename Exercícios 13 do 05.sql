create database tung;
use tung;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    email varchar(100),
    telefone varchar(100),
    cidade varchar(100)
);

INSERT INTO clientes (nome, idade, email, telefone, cidade) 
VALUES
('João Silva', 30, 'joao@gmail.com', '11988887777', 'São Paulo'),
('Maria Oliveira', 25, 'maria@gmail.com', '11997776666', 'Rio de Janeiro'),
('Carlos Souza', 40, 'carlos@gmail.com', '11996665555', 'Belo Horizonte'),
('Ana Costa', 22, 'ana@gmail.com', '11995554444', 'Curitiba'),
('Pedro Lima', 35, 'pedro@gmail.com', '11994443333', 'Porto Alegre'),
('Juliana Rocha', 28, 'juliana@gmail.com', '11993332222', 'Campinas'),
('Rafael Alves', 31, 'rafael@gmail.com', '11992221111', 'São Paulo'),
('Fernanda Santos', 27, 'fernanda@gmail.com', '11991110000', 'Salvador'),
('Lucas Pereira', 45, 'lucas@gmail.com', '11989998888', 'Fortaleza'),
('Camila Gomes', 29, 'camila@gmail.com', '11988881111', 'Recife'),
('Bruno Martins', 33, 'bruno@gmail.com', '11987772222', 'Brasília'),
('Patrícia Nunes', 26, 'patricia@gmail.com', '11986663333', 'Manaus'),
('Diego Ferreira', 38, 'diego@gmail.com', '11985554444', 'Natal'),
('Aline Barros', 24, 'aline@gmail.com', '11984445555', 'Florianópolis'),
('Thiago Mendes', 36, 'thiago@gmail.com', '11983336666', 'São Paulo');

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    categoria varchar(100),
    estoque int
);

INSERT INTO produtos (nome, preco, categoria, estoque) VALUES
('Notebook Dell', 3500.00, 'Eletrônicos', 10),
('Mouse Logitech', 80.00, 'Periféricos', 50),
('Teclado Mecânico', 250.00, 'Periféricos', 30),
('Monitor LG', 900.00, 'Eletrônicos', 15),
('Cadeira Gamer', 1200.00, 'Móveis', 8),
('Mesa Escritório', 600.00, 'Móveis', 12),
('Smartphone Samsung', 2000.00, 'Eletrônicos', 20),
('Fone Bluetooth', 150.00, 'Áudio', 40),
('Caixa de Som', 300.00, 'Áudio', 25),
('Impressora HP', 700.00, 'Eletrônicos', 10),
('Tablet Lenovo', 1800.00, 'Eletrônicos', 18),
('Carregador USB-C', 60.00, 'Acessórios', 100),
('HD Externo 1TB', 400.00, 'Armazenamento', 22),
('SSD 500GB', 350.00, 'Armazenamento', 35),
('Webcam HD', 220.00, 'Periféricos', 28);

select nome 
from produtos;

select nome, preco
from produtos;

select nome, preco
from produtos
where preco > 100;

select nome, preco
from produtos
where estoque < 10;

select nome, categoria
from produtos
where categoria = "Eletrônicos";

select nome, categoria
from produtos
where categoria = "Samsung";

select nome, preco
from produtos
where preco between 50 and 500;

select nome, preco
from produtos
where estoque IN(0, 5);

select nome, categoria
from produtos
where categoria = "Informática";

select nome, categoria
from produtos
where categoria IN("Eletrônicos", "Informática", "Games");

select nome
from produtos 
where nome like "M%";


select nome
from produtos 
where nome like "%Pro";

select nome 
from produtos
where nome like "%Note%";

select nome, preco
from produtos
where preco > 1000 and
estoque > 3;

select nome, categoria
from produtos
where categoria IN("LG", "Samsung");
