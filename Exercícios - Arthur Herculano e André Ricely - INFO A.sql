create database excel;
use excel;

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



CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    salario DECIMAL(10,2)
);

INSERT INTO funcionarios (nome, salario) VALUES
('Pedro Santos', 2500.00),
('Juliana Lima', 3200.00),
('Roberto Alves', 2800.00),
('Fernanda Rocha', 3500.00),
('Marcos Oliveira', 4200.00),
('Carla Souza', 3900.00),
('Rafael Lima', 3100.00),
('Amanda Costa', 2700.00),
('Bruno Almeida', 4500.00),
('Patrícia Nunes', 3300.00),
('Diego Ferreira', 3600.00),
('Larissa Mendes', 2900.00),
('Gustavo Martins', 4100.00),
('Beatriz Rocha', 3800.00),
('Eduardo Silva', 5000.00);

select  count(salario) from funcionarios;
select  sum(salario) from funcionarios AS Soma_salarios;

Select max(salario) from funcionarios As Maior_salario;
Select min(salario) from funcionarios As Menor_salario;
    

	select salario, if(salario > 3000, "Alto", 
	if(salario >=2500, "Médio", "Baixo")) AS Condicao_Salario
    from funcionarios;
    
    select idade, if(idade > 18, "Maior", 'Menor') AS Condicao_Idad
    from funcionarios;
    
    set @valor_Alto = 2000;
    select preco, if(preco >= @valor_Alto, "Alto", "Baixo")
    from produtos;
    
    set @numero = 0;
    select if(@numero > 0, "Positivo", 
    if(@numero < 0, "Negativo", "Zero")) AS Numero
    from produtos;
    
    select nome, salario, if(salario >= 3000, salario + (salario * 30/100), salario + (salario * 5/100)) 
    AS Aumento
    from funcionarios;
    
    select nome, idade, if( idade >= 18,
    "Pode Comprar", "Não Compre") AS Status_Condicao
    from clientes;
    
    select preco, if(preco >= 2000, "Promoção", "Não") AS Promoção
    from produtos;
    
    set @a = 1;
    select if(@a >= 9, 'Aprovado com sucesso', 
    if(@b >= 5, "Aprovado",
    if(@c < 5, "Reprovado", @d))) AS Média;
    
    set @valor = 2000;
     select @valor AS Valor, if(@valor % 5 = 0, "multiplo de 5", "Nao multiplo") AS resultado;
    
    set @b = 10;
    set @c = 7;
	select if( @b > @c, " B é Maior", if (@c < @b, "Menor que B", if(@b < @c, "C é Maior", "Menor que C"))) AS classificação
    from funcionarios;
    