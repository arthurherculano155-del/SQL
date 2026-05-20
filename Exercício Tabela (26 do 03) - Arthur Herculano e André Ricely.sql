create database escola;
use escola;

create table alunos(
id int auto_increment primary key,
nome varchar (100),
idade int,
curso varchar (100),
cidade varchar (100),
media decimal (10,2),
email varchar(100)
);

INSERT INTO alunos(nome, idade, curso, cidade, media, email)
VALUES
('Ana Souza', 20, 'Engenharia', 'São Paulo', 8.5, 'ana.souza@email.com'),
('Bruno Lima', 22, 'Direito', 'Rio de Janeiro', 7.8, 'bruno.lima@email.com'),
('Carla Mendes', 19, 'Medicina', 'Belo Horizonte', 9.1, 'carla.mendes@email.com'),
('Diego Alves', 23, 'Administração', 'Curitiba', 7.5, 'diego.alves@email.com'),
('Elisa Rocha', 21, 'Psicologia', 'Salvador', 8.9, 'elisa.rocha@email.com'),
('Felipe Martins', 24, 'Informática', 'Recife', 7.2, 'felipe.martins@email.com'),
('Gabriela Pinto', 20, 'Arquitetura', 'Porto Alegre', 8.3, 'gabriela.pinto@email.com'),
('Henrique Costa', 22, 'Engenharia', 'Fortaleza', 6.9, 'henrique.costa@email.com'),
('Isabela Freitas', 19, 'Enfermagem', 'Brasília', 9.4, 'isabela.freitas@email.com'),
('João Pedro Silva', 23, 'Economia', 'Manaus', 7.7, 'joao.silva@email.com'),
('Karen Oliveira', 21, 'Biologia', 'Goiânia', 8.0, 'karen.oliveira@email.com'),
('Lucas Barros', 25, 'Física', 'Campinas', 6.8, 'lucas.barros@email.com'),
('Mariana Teixeira', 20, 'Química', 'Natal', 8.6, 'mariana.teixeira@email.com'),
('Nathan Ribeiro', 22, 'História', 'Florianópolis', 7.3, 'nathan.ribeiro@email.com'),
('Paula Fernandes', 24, 'Letras', 'Vitória', 9.0, 'paula.fernandes@email.com');

select nome 
from alunos;

select * from alunos
where curso = 'Informática';

select * from alunos
where idade > 20;

select * from alunos
where media > 7;

select * from alunos
where cidade = 'São Paulo';



select * from alunos
where cidade = 'Osasco' and idade > 18;

select * from alunos
where curso = 'Informática' and media < 7;

select * from alunos
where idade > 20 and media > 8;

select * from alunos
where curso = 'Logística' and idade < 22;

select * from alunos
where curso = 'Administração' or curso = 'Informática';

select * from alunos
where media < 6 or idade > 22;

select * from alunos
where cidade = 'Barueri' or cidade = 'São Paulo';

select * from alunos
where idade < 18 or media > 9;

select * from alunos
where curso = 'Logística' or media > 8;

select * from alunos
where curso not in ('Informática');

select * from alunos
where cidade not in ('São Paulo');

select * from alunos
where media < 7;

select * from alunos
where curso not in ('Administração');

select * from alunos
where idade < 20;


select * from alunos
where idade between 18 and 21;

select * from alunos
where media between 7 and 9;

select * from alunos
where idade between 20 and 23;

select * from alunos
where media between 5 and 8;

select * from alunos
where idade between 17 and 19 and curso = 'Informática';

select nome
from alunos
order by nome ASC;

select nome, idade
from alunos
order by idade DESC;

select nome, media
from alunos
order by media DESC;

select curso, nome, media
from alunos
where curso = 'Administração'
order by media ASC;


select nome, idade, cidade
from alunos
where cidade = 'São Paulo'
order by idade ASC;

