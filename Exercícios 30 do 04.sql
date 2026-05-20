create database patrao;
use patrao;

create table clientes(
id int auto_increment primary key,
idade int,
cidade varchar(100),
nome varchar(100),
preco decimal(10,2),
estoque int
);

INSERT INTO clientes(nome, idade, cidade, preco, estoque)
values
('Arthur Herculano', 17, 'São Paulo', 6700.00, 10),
('Bruno Silva', 25, 'Rio de Janeiro', 1500.00, 5),
('Carla Souza', 32, 'Belo Horizonte', 2300.50, 8),
('Daniel Oliveira', 41, 'Curitiba', 980.75, 12),
('Eduarda Santos', 29, 'Porto Alegre', 3200.00, 7),
('Felipe Costa', 36, 'Salvador', 450.90, 20),
('Gabriela Lima', 22, 'Recife', 870.00, 15),
('Henrique Alves', 55, 'Fortaleza', 1250.30, 6),
('Isabela Pereira', 19, 'Manaus', 640.00, 18),
('João Rodrigues', 47, 'Brasília', 2780.99, 9),
('Karina Fernandes', 33, 'Goiânia', 1999.99, 11),
('Lucas Martins', 28, 'Campinas', 3100.00, 4),
('Mariana Rocha', 40, 'Florianópolis', 2750.75, 10),
('Nicolas Barros', 23, 'Vitória', 890.20, 13),
('Patrícia Gomes', 51, 'Natal', 1340.00, 6),
('Rafael Teixeira', 38, 'João Pessoa', 2210.10, 8),
('Sabrina Ribeiro', 27, 'Maceió', 1780.60, 14),
('Thiago Moreira', 44, 'São Luís', 990.90, 16),
('Ursula Castro', 31, 'Aracaju', 1560.45, 7),
('Victor Nunes', 26, 'Campo Grande', 2050.00, 5),
('Yasmin Freitas', 21, 'Teresina', 720.80, 19);

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT,
    data_cadastro DATE
);

INSERT INTO produtos (nome, categoria, preco, estoque, data_cadastro) 
VALUES
('Notebook Dell', 'Informática', 4500.00, 10, '2024-01-10'),
('Mouse Logitech', 'Acessórios', 120.00, 50, '2024-01-12'),
('Teclado Mecânico', 'Acessórios', 350.00, 30, '2024-01-15'),
('Monitor LG 24"', 'Informática', 900.00, 20, '2024-01-18'),
('Smartphone Samsung', 'Celulares', 2200.00, 15, '2024-01-20'),
('iPhone 13', 'Celulares', 4800.00, 8, '2024-01-22'),
('Cadeira Gamer', 'Móveis', 750.00, 12, '2024-01-25'),
('Mesa Escritório', 'Móveis', 500.00, 5, '2024-01-28'),
('HD Externo 1TB', 'Armazenamento', 400.00, 25, '2024-02-01'),
('Pen Drive 64GB', 'Armazenamento', 80.00, 60, '2024-02-03'),
('Impressora HP', 'Periféricos', 650.00, 10, '2024-02-05'),
('Webcam Full HD', 'Periféricos', 200.00, 18, '2024-02-08'),
('Caixa de Som JBL', 'Áudio', 300.00, 22, '2024-02-10'),
('Fone de Ouvido Sony', 'Áudio', 250.00, 35, '2024-02-12'),
('Smart TV 50"', 'Eletrônicos', 2800.00, 7, '2024-02-15'),
('Console PS5', 'Games', 4500.00, 6, '2024-02-18'),
('Controle Xbox', 'Games', 350.00, 14, '2024-02-20'),
('Roteador Wi-Fi', 'Redes', 200.00, 19, '2024-02-22'),
('Switch 8 Portas', 'Redes', 180.00, 16, '2024-02-25'),
('Tablet Lenovo', 'Informática', 1200.00, 9, '2024-02-28'),
('Carregador Portátil', 'Acessórios', 150.00, 40, '2024-03-02'),
('Cabo HDMI', 'Acessórios', 50.00, 70, '2024-03-05'),
('Relógio Smartwatch', 'Vestíveis', 900.00, 11, '2024-03-08'),
('Câmera Digital Canon', 'Fotografia', 3200.00, 4, '2024-03-10'),
('Tripé para Câmera', 'Fotografia', 180.00, 13, '2024-03-12');

ALTER TABLE clientes
add column oi varchar(50);

ALTER TABLE clientes
add column peso DECIMAL(10,2);

ALTER TABLE clientes
modify	nome varchar(150);

ALTER TABLE clientes
rename column estoque to quantidade;

ALTER TABLE clientes
drop column peso;

ALTER TABLE clientes
add column oi2 BOOLEAN;

select nome, preco 
from produtos
where preco > 100 and
estoque > 10;

select nome, preco
from produtos
where categoria = "Eletrônicos" and
preco < 1000;

select nome, preco, estoque, categoria
from produtos
where estoque < 20 and 
preco > 500;

select nome, preco, data_cadastro
from produtos 
where categoria = "Móveis" and
data_cadastro > 2024-02-01;

select nome, preco, estoque
from produtos
where estoque between 50 and 500;


select nome, preco, produtos, estoque
from produtos
where estoque between 10 and 100;

select nome, preco, data_cadastro
from produtos
where data_cadastro between 2024-02-01 and 2024-03-01;

select nome, preco, categoria
from produtos 
where preco between 100 and 1000 and categoria = "Eletrônicos";

select nome, preco, categoria, estoque
from produtos
where preco between 50 and 500 and
 categoria = "Eletrônicos" or "Móveis";
 
 select nome, preco, categoria, estoque
from produtos
where estoque < 50 or preco between 1000 and 3000
and  categoria = "Eletrônicos";

