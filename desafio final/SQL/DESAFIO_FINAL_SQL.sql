-- CRIANDO O DATABASE

create database biblioteca;

use biblioteca;

-- CRIANDO AS TABLEAS

CREATE TABLE cliente (
    id_cliente INT NOT NULL,
    primeiro_nome VARCHAR(30) NOT NULL,
    ultimo_nome VARCHAR(30) NOT NULL,
    cpf VARCHAR(15) NOT NULL,
    telefone INT NOT NULL,
    PRIMARY KEY (id_cliente),
    UNIQUE KEY (cpf)
);

alter table cliente modify telefone varchar(17) not null;

CREATE TABLE emprestimo (
    id_emprestimo INT NOT NULL,
    valor INT NOT NULL,
    cpf_cliente VARCHAR(15) NOT NULL,
    data_entrada DATE NOT NULL,
    PRIMARY KEY (id_emprestimo),
    FOREIGN KEY (cpf_cliente)
        REFERENCES cliente(cpf) 
);

alter table emprestimo modify valor decimal(10,2) not null;

CREATE TABLE editora (
    id_editora INT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    gerente VARCHAR(30) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_editora)
);

CREATE TABLE departamento (
    id_departamento CHAR(4) NOT NULL,
    departamento VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_departamento)
);

CREATE TABLE livro (
    id_livro INT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    autor VARCHAR(30) NOT NULL,
    id_editora INT NOT NULL,
    id_departamento CHAR(4),
    PRIMARY KEY (id_livro),
    FOREIGN KEY (id_editora)
        REFERENCES editora (id_editora),
    FOREIGN KEY (id_departamento)
        REFERENCES departamento (id_departamento)
);

-- ADICIONANDO 1 COLUNA NA TABLEA EMPRESTIMO

alter table emprestimo add column data_entrega date null;

-- SELECIONANDO AS TABELAS

select * from cliente;

select * from departamento;

select * from editora;

select * from emprestimo;

select * from livro;

-- INSERINDO VALORES EM CLIENTE

insert into cliente
(
	id_cliente,
    primeiro_nome,
    ultimo_nome,
    cpf,
    telefone
) values
(
	0001,
    'Arthur',
    'Pacheco',
    '089.999.767-90',
    '+5583996088863'
);

insert into cliente
(
	id_cliente,
    primeiro_nome,
    ultimo_nome,
    cpf,
    telefone
) values
(
	0002,
    'Maria',
    'Luiza',
    '055.999.777-80',
    '+5583996088555'
);

insert into cliente
(
	id_cliente,
    primeiro_nome,
    ultimo_nome,
    cpf,
    telefone
) values
(
	0003,
    'Anastasia',
    'Chiron',
    '021.234.767-00',
    '+5583922558863'
);

insert into cliente
(
	id_cliente,
    primeiro_nome,
    ultimo_nome,
    cpf,
    telefone
) values
(
	0004,
    'Celestin',
    'Uber',
    '098.367.767-90',
    '+5583988437225'
);

insert into cliente
(
	id_cliente,
    primeiro_nome,
    ultimo_nome,
    cpf,
    telefone
) values
(
	0005,
    'Mia',
    'Stella',
    '080.123.098-87',
    '+5583991402276'
);

-- INSERINDO VALORES EM EMPRESTIMO

insert into emprestimo
(
	id_emprestimo,
    valor,
    cpf_cliente,
    data_entrada
) values
(
	2001,
    22.50,
    '080.123.098-87',
    '2024-08-20'
);

insert into emprestimo
(
	id_emprestimo,
    valor,
    cpf_cliente,
    data_entrada
) values
(
	2002,
    50.00,
    '098.367.767-90',
    '2024-06-10'
);

insert into emprestimo
(
	id_emprestimo,
    valor,
    cpf_cliente,
    data_entrada
) values
(
	2003,
    35.00,
    '021.234.767-00',
    '2024-07-15'
);

insert into emprestimo
(
	id_emprestimo,
    valor,
    cpf_cliente,
    data_entrada
) values
(
	2004,
    76.00,
    '055.999.777-80',
    '2024-08-15'
);

select * from emprestimo;

insert into editora
(
    id_editora,
    nome,
    gerente,
    endereco
) values
(
	3001,
    'Sonhar',
    'Marcos Lima',
    'Joao Pessoa'
);

-- INSERINDO VALORES EM EDITORA

insert into editora
(
    id_editora,
    nome,
    gerente,
    endereco
) values
(
	3002,
    'Leitura',
    'Simone Mendes',
    'Recife'
);

insert into editora
(
    id_editora,
    nome,
    gerente,
    endereco
) values
(
	3003,
    'Saraiva',
    'Arthur Oliveira',
    'Sao Paulo, SP'
);

insert into editora
(
    id_editora,
    nome,
    gerente,
    endereco
) values
(
	3004,
    'Cultura',
    'Rafael Santos',
    'Natal - RN'
);

insert into editora
(
    id_editora,
    nome,
    gerente,
    endereco
) values
(
	3005,
    'ArteC',
    'Wallace Santos',
    'Manaus - AM'
);

select * from editora;

-- INSERINDO VALORES EM DEPARTAMENTO

insert into departamento
(
    id_departamento,
    departamento
) values
(
	'D001',
    'Arte'
);

insert into departamento
(
    id_departamento,
    departamento
) values
(
	'D002',
    'Literatura'
);

insert into departamento
(
    id_departamento,
    departamento
) values
(
	'D003',
    'Tecnologia'
);

insert into departamento
(
    id_departamento,
    departamento
) values
(
	'D004',
    'Infantil'
);

insert into departamento
(
    id_departamento,
    departamento
) values
(
	'D005',
    'Romance'
);

select * from departamento;

insert into livro
(
	id_livro,
    nome,
    autor,
    id_editora,
    id_departamento
) values
(
	4001,
    'Orgulho e Preconceito',
    'Arthur C',
    3001,
    'D005'
);

-- INSERINDO VALORES EM LIVRO

insert into livro
(
	id_livro,
    nome,
    autor,
    id_editora,
    id_departamento
) values
(
	4002,
    'Cosmos',
    'Carl S',
    3002,
    'D001'
);

insert into livro
(
	id_livro,
    nome,
    autor,
    id_editora,
    id_departamento
) values
(
	4003,
    'Diario de um Banana',
    'John J',
    3004,
    'D004'
);

insert into livro
(
	id_livro,
    nome,
    autor,
    id_editora,
    id_departamento
) values
(
	4004,
    'Logica de Programacao',
    'Caio L',
    3001,
    'D002'
);

insert into livro
(
	id_livro,
    nome,
    autor,
    id_editora,
    id_departamento
) values
(
	4005,
    'Python em Dados',
    'Rodrigo A',
    3001,
    'D002'
);

select * from livro;
	




    
	



