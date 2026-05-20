create database banco;
use banco;

create table funcionarios(
id int auto_increment primary key,
nome varchar (100),
idade int,
salario decimal(10,2),
cidade varchar (100),
email varchar(100),
data_contracacao date
);

insert into funcionarios(nome, idade, salario, cidade, email, data_contracacao)
values
('Ana Souza', 28, 3500.00, 'São Paulo', 'ana.souza@email.com', '2021-03-15'),
('Bruno Lima', 35, 5200.50, 'Rio de Janeiro', 'bruno.lima@email.com', '2020-07-10'),
('Carlos Mendes', 42, 6100.75, 'Belo Horizonte', 'carlos.mendes@email.com', '2019-01-25'),
('Daniela Rocha', 30, 4200.00, 'Curitiba', 'daniela.rocha@email.com', '2022-06-12'),
('Eduardo Alves', 27, 3100.20, 'Porto Alegre', 'eduardo.alves@email.com', '2023-02-05'),
('Fernanda Costa', 33, 4800.90, 'Salvador', 'fernanda.costa@email.com', '2021-11-18'),
('Gabriel Martins', 29, 3900.00, 'Fortaleza', 'gabriel.martins@email.com', '2020-09-30'),
('Helena Ribeiro', 45, 7200.00, 'Recife', 'helena.ribeiro@email.com', '2018-04-20'),
('Igor Fernandes', 31, 4100.60, 'Manaus', 'igor.fernandes@email.com', '2022-01-14'),
('Juliana Teixeira', 26, 3000.00, 'Florianópolis', 'juliana.teixeira@email.com', '2023-05-01'),
('Lucas Barros', 38, 5800.00, 'Brasília', 'lucas.barros@email.com', '2019-08-22'),
('Mariana Duarte', 34, 4950.75, 'Goiânia', 'mariana.duarte@email.com', '2021-10-11'),
('Nicolas Freitas', 40, 6500.00, 'Campinas', 'nicolas.freitas@email.com', '2017-12-03'),
('Olivia Pires', 25, 2800.00, 'Santos', 'olivia.pires@email.com', '2024-01-19'),
('Paulo Henrique', 36, 5300.40, 'São Luís', 'paulo.henrique@email.com', '2020-03-27'),
('Renata Carvalho', 32, 4700.00, 'Natal', 'renata.carvalho@email.com', '2022-08-09'),
('Sérgio Batista', 44, 7000.00, 'João Pessoa', 'sergio.batista@email.com', '2018-06-15'),
('Tatiane Moraes', 29, 3600.00, 'Maceió', 'tatiane.moraes@email.com', '2021-02-28'),
('Ubirajara Silva', 50, 8000.00, 'Belém', 'ubirajara.silva@email.com', '2016-09-05'),
('Vanessa Lopes', 27, 3200.00, 'Aracaju', 'vanessa.lopes@email.com', '2023-03-12'),
('William Nunes', 39, 6000.00, 'Cuiabá', 'william.nunes@email.com', '2019-11-23'),
('Xavier Gomes', 41, 6700.00, 'Campo Grande', 'xavier.gomes@email.com', '2018-07-07'),
('Yasmin Azevedo', 24, 2700.00, 'Teresina', 'yasmin.azevedo@email.com', '2024-02-14'),
('Zeca Rocha', 37, 5500.00, 'Palmas', 'zeca.rocha@email.com', '2020-05-30'),
('Aline Castro', 31, 4300.00, 'São Paulo', 'aline.castro@email.com', '2021-09-17'),
('Bernardo Farias', 28, 3400.00, 'Rio de Janeiro', 'bernardo.farias@email.com', '2022-04-21'),
('Camila Torres', 35, 5100.00, 'Belo Horizonte', 'camila.torres@email.com', '2020-12-10'),
('Diego Peixoto', 33, 4600.00, 'Curitiba', 'diego.peixoto@email.com', '2021-06-05'),
('Elisa Santana', 26, 2950.00, 'Salvador', 'elisa.santana@email.com', '2023-07-08'),
('Fábio Rezende', 43, 6900.00, 'Fortaleza', 'fabio.rezende@email.com', '2018-10-19');


-- 1 Selecione o salário máximo

select max(salario) AS Salário_Máximo
from funcionarios;

-- 2. Selecione o salário mínimo

select min(salario) AS Salário_Mínimo
from funcionarios;

-- 3. Altere a coluna salario para "dinheiros"

Alter table funcionarios
rename column salario to dinheiros;

-- 4. Procure pessoas que não têm a letra "a" no nome com o salário maior que 1500

select nome, dinheiros
from funcionarios
where nome not like "%a%" and
dinheiros > 1500;

-- 5. Adicione a coluna dados como BOOLEAN

alter table funcionarios
add column dados BOOLEAN;

-- 6. Drope a coluna "data_contracacao"

alter table funcionarios
drop column data_contracacao;

-- 7. Procure pessoas com idade maior ou igual a 40 que moram em São Paulo ou Rio de Janeiro, com salário maior que 2000.

select nome, idade, dinheiros
from funcionarios
where idade >= 40 and
cidade in("São Paulo", "Rio de Janeiro") and
dinheiros > 2000;

-- 8. Remova a segurança do mySQL

set SQL_SAFE_UPDATES = 0; 

-- 9. Crie a variável soma com o valor 10, some todos os salários e some com a variável soma como Soma_Salarios

set @soma = 10;

select (sum(dinheiros) + @soma) AS Soma_Salarios
from funcionarios;

-- 10. Procure pessoas com o nome terminado com a letra a ou iniciado com a letra b

select nome
from funcionarios
where nome like "%a" or
nome like "B%";

-- 11. selecione todas as pessoas com o nome "Aline"

select nome
from funcionarios
where nome = "Aline";

-- 12. selecione a media do salario

select avg(dinheiros) AS Média_Salário
from funcionarios;

-- 13. selecione os salarios entre "2000" e "5000"

select nome, dinheiros
from funcionarios
where dinheiros between 2000 and 5000;

-- 14. procure as pessoas que nao tem a letra "e" no nome

 select nome
 from funcionarios
 where nome like "%e%";
 
 -- 15. selecione as pessoas que tem a idade maior que 20
 
 select nome, idade
 from funcionarios
 where idade > 20;
 
 -- 16. procure as pessoas que nao mora "Curitiba", "Belo Horizonte" e com o salario menor ou igual que "3000"
 
 select nome, cidade, dinheiros
 from funcionarios
 where cidade not in( "Curítiba", "Belo Horizonte" ) and 
 dinheiros <= 3000;
 
 -- 17 procure as pessoas que o nome termina com a letra "e"
 
 select nome
 from funcionarios
 where nome like "e%";
 
 -- 18  exclua a coluna "email"
 
alter table funcionarios
drop column idade;

-- 19 adicione o nome "João" 

update funcionarios
set nome = 'João'
where id = 1;

-- 20  Altere a coluna cidade para "Residencia"

alter table funcionarios
rename column cidade to Residencia;