create database Biblioteca;
use Biblioteca;
set SQL_SAFE_UPDATES = 0;

create table Livros(
id int auto_increment primary key,
Titulo varchar (100),
Autor varchar(50),
Ano_publicacao int,
Preco decimal (8,2),
Estoque int,
Data_Cadastro date
);

select * from Livros;
INSERT INTO Livros( Titulo, Autor, Ano_publicacao, Preco, Estoque, Data_Cadastro )
VALUES
('Harry Potter', 'Arthur Herculano', 2009, 106.60, 504, '2021-03-02'),
('Iniciando MYSQL', 'André Oliveira', 2015, 50.75, 8, '2019-12-03'),
('Básicos de Java', 'Ana Silva', 2016, 80.99, 407, '2018-06-11'),
('COBOL', 'Arthur Herculano', 2008, 80.75, 100, '2018-06-17'),
('Kung Fu Panda', 'Ryan Ribeiro', 2023, 26.60, 6, '2025-03-02');

select * from Livros
where Titulo like '_%';

select * from Livros
where Ano_publicacao > 2020 and Titulo and Autor;

select * from Livros
where Estoque < 10;

select * from Livros
where Ano_Publicacao = 2025 and Titulo and Autor;

update Livros
set preco = 150.00
where id = 2;

update Livros
set Estoque = 417
where id = 3;

delete from Livros
where id = 5;

delete from Livros
where Ano_publicacao < 2010;

select * from Livros;