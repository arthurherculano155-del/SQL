create database Star;
use Star;
set SQL_SAFE_UPDATES = 0;

CREATE TABLE clientes(
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    data_cadastro DATE,
    ativo BOOLEAN
);

Create table pedidos(
id_pedidos int auto_increment primary key,
nome varchar(100),
valor decimal(10,2)
);

INSERT INTO clientes(nome, email, data_cadastro, ativo)
VALUES 
('João Silva', 'joao@email.com', '2024-01-10', TRUE),
('Maria Souza', 'maria@email.com', '2024-02-15', TRUE);

INSERT INTO pedidos(nome, valor)
VALUES
('Alice Terceira', 10.20);

ALTER TABLE clientes
add column telefone varchar(100);

ALTER TABLE clientes 
add column cpf varchar(14);

ALTER TABLE clientes
DROP column cpf;

ALTER TABLE clientes
MODIFY nome varchar(200);

ALTER TABLE clientes
RENAME COLUMN email TO email_principal;

ALTER TABLE clientes 
ADD column status BOOLEAN;

update clientes
SET status = TRUE;

ALTER TABLE clientes 
ADD column data_nascimento DATE;

ALTER TABLE clientes 
MODIFY nome VARCHAR(100) NOT NULL;

ALTER TABLE clientes
RENAME to usuarios;

ALTER TABLE pedidos
modify valor decimal(12,2);

ALTER TABLE pedidos
add column forma_pagamento varchar(100) after valor;

ALTER TABLE pedidos
drop column id_pedidos;