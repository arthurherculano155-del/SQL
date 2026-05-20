create database controle_funcionarios;
use controle_funcionarios;
set SQL_SAFE_UPDATES = 0;

create table funcionarios(
id int auto_increment primary key,
Nome varchar(100),
Email varchar(100),
Cidade varchar(100),
Telefone varchar(100),
Profissão varchar(100));

select * from funcionarios;
insert into funcionarios( Nome, Email, Cidade, Telefone, Profissão )
VALUES
('Ana Silva', 'ana.silva@email.com', 'São Paulo', '(11) 98765-4321', 'Analista de Sistemas'),
('Bruno Costa', 'bruno.costa@gmail.com', 'Rio de Janeiro', '(21) 97654-3210', 'Desenvolvedor'),
('Carla Souza', 'carla.souza@hotmail.com', 'Belo Horizonte', '(31) 96543-2109', 'Designer Gráfico'),
('Daniel Lima', 'daniel.lima@gmail.com', 'Curitiba', '(41) 95432-1098', 'Administrador'),
('Eduarda Pereira', 'eduarda.p@outlook.com', 'Salvador', '(71) 94321-0987', 'Programador'),
('Felipe Santos', 'felipe.santos@gmail.com', 'Fortaleza', '(85) 93210-9876', 'Engenheiro Civil'),
('Gabriela Rocha', 'gabriela.rocha@gmail.com', 'Recife', '(81) 92109-8765', 'Psicóloga'),
('Henrique Alves', 'henrique.alves@yahoo.com', 'rio de janeiro', '(51) 91098-7654', 'Professor'),
('Isabela Martins', 'isabela.m@hotmail.com', 'Brasília', '(61) 90987-6543', 'Arquiteta'),
('Joãoo', 'joao.fernandes@outlook.com', 'Manaus', '(92) 99876-5432', 'Técnico em Informática');


select * from funcionarios
where nome like 'A%';

select * from funcionarios
where nome like '%o';

select * from funcionarios
where nome like '%Silva%';

select * from funcionarios
where email like '%@gmail.com';

select * from funcionarios
where email like "%@hotmail.com";

select * from funcionarios 
where cidade like 's%';

select * from funcionarios
where cidade like 'rio%';

select * from funcionarios
where profissão like '%eng%';

select * from funcionarios
where nome like '_____';

select * from funcionarios
where nome like '_a%';

update funcionarios
set profissão =  replace(Profissão, 'Programador', 'Desenvolvedor')
where profissão like '%Programador%';

update funcionarios
set email = replace(email, '@hotmail.com', 'Outlook.com')
where email like '%@hotmail.com';

update funcionarios
set cidade = replace(cidade, 'São Paulo-SP' , 'São')
where cidade like 'São%';

update funcionarios 
set telefone = replace (telefone, '11', '9')
where telefone like '9%';

delete from funcionarios
where email like '%@yahoo.com';

delete from funcionarios
where nome like '%carlos';

delete from funcionarios
where profissão like '%junior';

select * from funcionarios
where telefone like "%00";

select * from funcionarios
where nome like '% ____%';

select * from funcionarios
where email like '%a@%';