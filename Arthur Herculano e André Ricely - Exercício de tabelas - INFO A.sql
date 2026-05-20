create database Sistema;
use Sistema;

create table Clientes(
id int auto_increment primary key,
Nome varchar(100),
Email varchar(100),
Cidade varchar(100)
);

create table Gerenciamento_de_fornecedores(
id int auto_increment primary key,
Nome varchar(100),
Telefone varchar(100),
Categoria varchar(100)
);

create table Controle_de_cursos(
id int auto_increment primary key,
Nome varchar(100),
Professor varchar(100),
Duracao varchar(100)
);

create table Agende_de_compromisso(
id int auto_increment primary key,
Descrição varchar(100),
Dia varchar(100),
Localização varchar(100)
);

create table Animais_de_estimacao(
id int auto_increment primary key,
Nome varchar(100),
Especie varchar(100),
Dono varchar(100)
);

create table Gerenciamento_de_projetos(
id int auto_increment primary key,
Nome varchar(100),
Responsavel varchar(100),
Dados varchar(100)
);


select * from Clientes;
insert into Clientes( Nome, Email, Cidade)
Values

('Arthur', 'arthurherculano155@gmail.com', 'São Paulo SP'),
('Carlos', 'carlossantana345@gmail.com', 'Mato Grosso'),
('André', 'ricelyandre151@gmail.com', 'Rio de Janeiro RJ');

update Clientes
set Cidade = 'São Paulo SP'
where id = 2;

delete from Clientes
where id = 1;


select * from Gerenciamento_de_fornecedores;

insert into Gerenciamento_de_fornecedores( Nome, Telefone, Categoria)
values

('Carla', '11 98577 6644','Alimentos'),
('João', '11 4002 8922','Vendas'),
('Ana', '11 98775 6655','Limpeza'),
('Silvano', '11 93299 0077','Tecnologia');

update Gerenciamento_de_fornecedores
set Telefone = '11 4002 8923'
where id = 3;

SET SQL_SAFE_UPDATES = 0;

delete from Gerenciamento_de_fornecedores
where Categoria = 'Alimentos';


select * from Controle_de_cursos;
insert into Controle_de_cursos( Nome, Professor, Duracao)
Values
('Informática', 'Bruno', '1 ano'),
('Inglês', 'Robson', '3 meses'),
('Robótica', 'Nathan', '6 meses'),
('Comunicação Visual', 'Diogo', '2 anos'),
('Costura', 'Grinha', '3 anos');

update Controle_de_cursos
set Professor = 'Carlos Silva'
where id = 4;

delete from Controle_de_cursos
where id = 2;

select * from Agende_de_compromisso;
INSERT INTO Agende_de_compromisso( descrição, Dia, Localização )
values 

('reunião', 2026-02-18, 'grajau'),
('aniversário', 2026-02-28,'interlagos'),
('medico', 2026-03-15,'parelheiros');

update Agende_de_compromisso
set Localização = 'sala 3'
 where id = 1;
 
delete from Agende_de_compromisso
where id = 2;


select * from Animais_de_estimacao;
insert into Animais_de_estimacao( Nome, Especie, Dono)
values
('Meg', 'Cachorro', 'João'),
('Princesa', 'Cachorro', 'Arthur'),
('Trevas da noite', 'Gato', 'Carlos'),
('Sombra das trevas', 'Gato', 'Carlos');

update Animais_de_estimacao
set Nome = 'Maria'
where id = 3;

delete from Animais_de_estimacao
where Especie = 'Gato';


select * from Gerenciamento_de_projetos;
insert into Gerenciamento_de_projetos( Nome, Responsavel, Dados)
values
('Projeto Website', 'Mariana Silva', 'Ativo'),
('Aplicativo Financeiro', 'Carlos Souza', 'Finalizado'),
('Campanha de Marketing', 'Ana Pereira', 'Ativo');

update Gerenciamento_de_projetos
set Dados = 'Finalizado'
where id = 1;

delete from Gerenciamento_de_projetos
where Dados = 'Finalizado';