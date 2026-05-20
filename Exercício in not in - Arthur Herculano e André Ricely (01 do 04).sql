create database loja;
use loja;

create table Clientes(
id int auto_increment primary key,
nome varchar(100),
idade int,
cidade varchar(100),
produto varchar(100),
pedido decimal(10,2)
);

INSERT INTO Clientes(nome, idade, cidade, produto, pedido)
VALUES
('Ana', 28, 'São Paulo', 'Notebook', 3500.00),
('Carlos', 35, 'Rio de Janeiro', 'Smartphone', 2200.50),
('Mariana', 22, 'Belo Horizonte', 'Fone de Ouvido', 199.90),
('João', 40, 'Curitiba', 'Televisão', 2800.00),
('Fernanda', 31, 'Porto Alegre', 'Tablet', 1500.75),
('Ricardo', 27, 'Salvador', 'Mouse', 120.00),
('Patrícia', 45, 'Fortaleza', 'Teclado', 250.99),
('Lucas', 29, 'Recife', 'Monitor', 980.00),
('Juliana', 33, 'Brasília', 'Impressora', 670.40),
('Rafael', 38, 'Manaus', 'Cadeira Gamer', 1200.00),
('Bruna', 26, 'Belém', 'Webcam', 310.20),
('Eduardo', 50, 'Goiânia', 'HD Externo', 450.00),
('Camila', 24, 'Campinas', 'SSD', 520.90),
('Felipe', 37, 'São Luís', 'Placa de Vídeo', 2500.00),
('Aline', 30, 'Maceió', 'Processador', 1800.00),
('Gustavo', 41, 'Natal', 'Memória RAM', 600.00),
('Larissa', 23, 'Teresina', 'Carregador', 89.90),
('André', 36, 'João Pessoa', 'Caixa de Som', 340.00),
('Renata', 32, 'Aracaju', 'Smartwatch', 999.99),
('Thiago', 28, 'Florianópolis', 'Drone', 3200.00),
('Vanessa', 34, 'Vitória', 'Câmera', 2750.50),
('Diego', 39, 'Campo Grande', 'Microfone', 430.00),
('Sabrina', 27, 'Cuiabá', 'Tripé', 210.00),
('Paulo', 44, 'Porto Velho', 'Roteador', 380.00),
('Tatiane', 31, 'Boa Vista', 'Pen Drive', 75.00),
('Marcelo', 48, 'Macapá', 'Switch', 890.00),
('Daniela', 25, 'Palmas', 'Headset', 299.99),
('Leandro', 42, 'Santos', 'Notebook Gamer', 5200.00),
('Priscila', 29, 'Niterói', 'Projetor', 3100.00),
('Bruno', 33, 'Uberlândia', 'Console', 2600.00);

select * from Clientes
where cidade in ('São Paulo', 'Curitiba');

select * from Clientes
where idade in ( 22, 25);

select * from Clientes
where produto in ('Notebook', 'Mouse');

select * from Clientes
where pedido in (80.00, 120.00);

select * from Clientes
where nome in ('Ana', 'Carlos');

select * from Clientes 
where cidade in (' Rio de Janeiro', 'Belo Horizonte');

select * from Clientes 
where id in (1, 2);

select * from Clientes 
where produto in ( 'Mesa', 'Cadeira');

select * from Clientes 
where idade in ( 28, 30, 35);

select * from Clientes 
where pedido in ( 500.00, 700.00);


select * from Clientes
where cidade not in ('São Paulo', 'Curitiba');

select * from Clientes
where produto not in ('Notebook', 'Mouse');

select * from Clientes
where nome not in ('Ana', 'Carlos');

select * from Clientes
where id in (3, 4, 5);

select * from Clientes
where idade not in ( 22, 25);

select * from Clientes 
where pedido in ( 900.00, 3500.00);

select nome, cidade 
from Clientes
where cidade in ("São Paulo", "Belo Horizonte");

select nome, produto, pedido
from Clientes 
where id not in (1, 2);

select nome, idade, cidade
from Clientes
where idade in (25, 28, 30) and 
cidade in ('São Paulo', 'Rio de Janeiro');

select nome, pedido, produto
from clientes
where pedido in (80.00, 120.00, 500.00) and
produto in ('Mouse', 'Teclado', 'Mesa');

select nome, idade, cidade
from clientes
where cidade in ('São Paulo', 'Curitiba') and
idade not in (22);

select * from clientes
where id in (1, 3, 5) and 
pedido not in (80.00);

select nome, idade 
from clientes
where nome in ('Ana', 'Juliana', 'Fernanda') and
idade in (25, 28, 30);

select produto, pedido
from clientes
where produto in ('Monitor', 'Notebook') and
pedido in (900.00, 3500.00, 4000.00);

select nome, idade, cidade
from clientes
where cidade not in ('Rio de Janeiro') and
idade in (30, 35, 40);

select nome, produto, pedido
from clientes
where produto not in ('Mesa') and
pedido in (500.00, 700.00, 900.00);

select nome, cidade
from clientes
where nome in ('Roberto', 'Carlos') and
cidade in ('Curitiba', 'Rio de Janeiro');

select id, produto
from clientes
where id in (2, 4, 6) and 
produto in ('Mouse', 'Notebook', 'Mesa');

select nome, idade, cidade
from clientes
where idade in (22, 25, 28) and
cidade not in ('Belo Horizonte');

select id, nome, produto, pedido
from clientes
where pedido not in (120.00) and
id in (1, 2, 3, 4);

select nome, idade, cidade
from clientes
where cidade in ('São Paulo', 'Rio de Janeiro', 'Curitiba') and
idade in (25, 28, 30) and
nome not in ('Ana');

select id, nome, produto, pedido
from clientes
where id not in (1) and 
produto in ('Notebook', 'Monitor', 'Mesa') and
pedido in (500.00, 900.00, 3500.00);