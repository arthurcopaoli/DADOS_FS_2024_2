-- CRIANDO DATABASE

create database mercado;

use mercado;

-- CRIANDO AS TABELAS

create table departamento
(
	id_dep int not null,
    departamento varchar(30),
    primary key (id_dep)
);

create table mercadorias
(
	id_merc int not null,
    nome_prod varchar(30) not null,
    valor decimal(10,2) not null,
    id_dep int not null,
    data_val date not null,
	primary key (id_merc),
    foreign key (id_dep) REFERENCES departamento(id_dep)
);

create table clientes
(
	id_cliente int not null,
    prim_nome varchar(30) not null,
    ult_nome varchar(30) not null,
    email varchar(50) not null,
    telefone varchar(16) not null,
    primary key (id_cliente)
);

create table pedidos
(
	id_pedido int not null,
    id_merc int not null,
    id_cliente int not null,
    data_pedido date not null,
    primary key (id_pedido),
    foreign key (id_merc) references mercadorias(id_merc),
    foreign key (id_cliente) references clientes(id_cliente)
);

-- INSERINDO VALORES DEPARTAMENTO

insert into departamento
(
	id_dep,
    departamento
) values
(
	001,
    'Carnes'
);

insert into departamento
(
	id_dep,
    departamento
) values
(
	002,
    'Higiene'
);

insert into departamento
(
	id_dep,
    departamento
) values
(
	003,
    'Frutos do mar'
);

insert into departamento
(
	id_dep,
    departamento
) values
(
	004,
    'Refrigerantes'
);

insert into departamento
(
	id_dep,
    departamento
) values
(
	005,
    'Massas'
);

-- INSERINDO VALORES EM MERCADORIAS

insert into mercadorias
(
	id_merc,
    nome_prod, 
    valor,
    id_dep,
    data_val
) values
(	100,
	'Picanha Arg',
    50.00,
    001,
    '2024-12-20'
);

insert into mercadorias
(
	id_merc,
    nome_prod, 
    valor,
    id_dep,
    data_val
) values
(	101,
	'Creme dental colg.',
    6.00,
    002,
    '2026-08-12'
);

insert into mercadorias
(
	id_merc,
    nome_prod, 
    valor,
    id_dep,
    data_val
) values
(	102,
	'Camarao m',
    35.00,
    003,
    '2024-11-10'
);

insert into mercadorias
(
	id_merc,
    nome_prod, 
    valor,
    id_dep,
    data_val
) values
(	103,
	'Coca cola 2l',
    10.00,
    004,
    '2025-12-10'
);

insert into mercadorias
(
	id_merc,
    nome_prod, 
    valor,
    id_dep,
    data_val
) values
(	104,
	'Fetuccine ber.',
    20.00,
    005,
    '2024-11-12'
);

-- INSERINDO VALORES EM CLIENTES

insert into clientes
(
	id_cliente,
    prim_nome,
    ult_nome,
    email,
    telefone
) values
(
	2001,
    'Arthur',
    'Pacheco',
    'arthurpacheco@gmail.com',
    '+5583996088863'
);

insert into clientes
(
	id_cliente,
    prim_nome,
    ult_nome,
    email,
    telefone
) values
(
	2004,
    'Pedro',
    'Henrique',
    'pedrohenr@gmail.com',
    '+5583996055007'
);

insert into clientes
(
	id_cliente,
    prim_nome,
    ult_nome,
    email,
    telefone
) values
(
	2003,
    'Maria',
    'Luiza',
    'marialuiza@gmail.com',
    '+5583982670863'
);

insert into clientes
(
	id_cliente,
    prim_nome,
    ult_nome,
    email,
    telefone
) values
(
	2006,
    'Anastasia',
    'Chiron',
    'anastasiachiron@gmail.com',
    '+5583998890023'
);

insert into clientes
(
	id_cliente,
    prim_nome,
    ult_nome,
    email,
    telefone
) values
(
	2005,
    'Marcia',
    'Lima',
    'marcialima02@gmail.com',
    '+5583995763240'
);

-- INSERINDO VALORES EM PEDIDOS

insert into pedidos
(
	id_pedido,
    id_merc,
    id_cliente,
    data_pedido
) values
(
	1001,
    100,
    2001,
    '2024-01-01'
);

insert into pedidos
(
	id_pedido,
    id_merc,
    id_cliente,
    data_pedido
) values
(
	1002,
    101,
    2004,
    '2024-04-11'
);

insert into pedidos
(
	id_pedido,
    id_merc,
    id_cliente,
    data_pedido
) values
(
	1003,
    102,
    2004,
    '2024-01-16'
);

insert into pedidos
(
	id_pedido,
    id_merc,
    id_cliente,
    data_pedido
) values
(
	1004,
    103,
    2003,
    '2024-08-01'
);

insert into pedidos
(
	id_pedido,
    id_merc,
    id_cliente,
    data_pedido
) values
(
	1005,
    104,
    2005,
    '2024-07-12'
);

-- REALIZANDO UM SELECT

select * from clientes;

-- REALIZANDO SELECT COM UMA FUNÇÃO DE AGREGAÇÃO

select max(valor) as valor_max from mercadorias;

-- UTILIZANDO UM UPDATE

UPDATE clientes 
SET 
    ult_nome = 'Arantes'
WHERE
    prim_nome = 'Maria';
    


    
    
    

    
    
    
    
    
    