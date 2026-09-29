create DATABASE loja;

use loja;

create table produtos (
	produto_id integer primary key auto_increment,
    nome varchar (50),
    preco decimal (10,2),
    estoque integer
);

create table vendas(
	venda_id integer primary key auto_increment,
    quantidade integer,
    data_venda date,
    produto_id integer,
    foreign key (produto_id) references produtos (produto_id)
);

#COMANDOS DML

insert into produtos (nome, preco, estoque)
values ('notebook dell', 5000.00, 10);

insert into produtos (nome, preco, estoque)
values ('Celular', 1000.00, 50);

insert into produtos (nome, preco, estoque)
values ('Ipad', 3000.00, 30);

insert into produtos (nome, preco, estoque)
values ('Notebook Lenovo', 5900.00, 34);

insert into produtos (nome, preco, estoque)
values ('Smartphone Apple', 3000.00, 45);


select * from produtos;

update produtos
set preco = 8000.00
where produto_id = 1;

select * from produtos;

delete from produtos
where produto_id = 2;

select * from produtos;

select nome, estoque from produtos;

# DML VENDAS

insert into vendas (produto_id, quantidade, data_venda)
values (3, 3, '2020-07-25');

select * from vendas;

insert into vendas (produto_id, quantidade, data_venda)
values (4, 65, '2021-06-21');

insert into vendas (produto_id, quantidade, data_venda)
values (5, 45, '2023-03-03');

insert into vendas (produto_id, quantidade, data_venda)
values (6, 23, '2024-04-04');

select * from vendas;





