create database vendas;
use vendas;

create table loja(
id int auto_increment primary key,
nome varchar(100),
produto varchar(100),
preco decimal(10,2),
categoria varchar(50),
quantidade int
);

insert into loja(nome, produto, preco, categoria, quantidade)
values
("Arthur", "Notebook", 3500.00, "Informática", 2),
("Maria", "Mouse Gamer", 150.90, "Informática", 5),
("João", "Teclado Mecânico", 299.99, "Informática", 3),
("Ana", "Monitor 24", 899.90, "Informática", 1),
("Carlos", "Headset", 199.50, "Acessórios", 4),
("Fernanda", "Celular Samsung", 2200.00, "Telefonia", 2),
("Lucas", "Carregador", 89.90, "Telefonia", 6),
("Beatriz", "Cadeira Gamer", 1200.00, "Móveis", 1),
("Rafael", "Mesa Escritório", 750.00, "Móveis", 2),
("Juliana", "Impressora", 650.90, "Informática", 1),
("Arthur", "Webcam", 180.00, "Acessórios", 3),
("Maria", "Caixa de Som", 320.50, "Áudio", 2),
("João", "Smart TV", 2800.00, "Eletrônicos", 1),
("Ana", "Ventilador", 210.00, "Eletrodomésticos", 2),
("Carlos", "Geladeira", 3999.99, "Eletrodomésticos", 1),
("Fernanda", "Fogão", 1850.00, "Eletrodomésticos", 1),
("Lucas", "Micro-ondas", 620.00, "Eletrodomésticos", 2),
("Beatriz", "Tablet", 1450.75, "Informática", 3),
("Rafael", "HD Externo", 410.00, "Acessórios", 4),
("Juliana", "Notebook Dell", 4300.00, "Informática", 1),
("Maria", "Mouse Pad", 45.00, "Acessórios", 7),
("Arthur", "SSD 1TB", 550.00, "Informática", 2),
("Fernanda", "Fone Bluetooth", 230.00, "Áudio", 5),
("Carlos", "Smartwatch", 980.00, "Eletrônicos", 2),
("Ana", "Roteador Wi-Fi", 320.00, "Informática", 3),
("Lucas", "Controle Xbox", 410.00, "Games", 2),
("Juliana", "PlayStation 5", 4500.00, "Games", 1),
("Beatriz", "Kindle", 520.00, "Eletrônicos", 2),
("João", "Drone", 3200.00, "Eletrônicos", 1),
("Rafael", "Projetor", 2700.00, "Eletrônicos", 1);

ALTER TABLE loja
rename column preco to valor;

select sum(valor) AS total_valores
from loja;

select round(avg(valor), 2) AS total_produtos
from loja;

select max(valor) AS Maximo_valor
from loja;

select min(valor) AS Mínimo_valor
from loja;

 select count(*) AS total_funcionarios
from loja;
 
 select count(quantidade) AS Total_Vendas
 from loja;

select round(avg(quantidade), 2) AS total_produtos
from loja;

select sum(valor) AS Quantidade_Vendedor
from loja
group by nome;

select count(quantidade) AS Quantidade_Vendas
from loja
group by nome;

select max(valor) AS Maior_Valor
from loja
group by nome;

select min(valor) AS Menor_Categoria
from loja
group by categoria;

select round(avg(valor), 2) AS Média_Categoria
from loja
group by categoria;

select count(distinct produto) AS Produtos_Diferentes
from loja
group by produto;

select max(valor) AS Maior_Informática
from loja
group by categoria
having(categoria) = "Informática";

select max(valor) AS Maior_vendas 
from loja
group by produto
having (produto) > 3000;

select avg(valor) AS Media_vendedor
from loja
group by nome;

select max(quantidade) total_Vendedor
from loja
group by nome;

select max(valor) Maior_Vendas
from loja
group by categoria;

select max(valor) Total_vendedor
from loja
group by categoria
order by categoria DESC
limit 2;