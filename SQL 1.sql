create database ger_escola;
use ger_escola;
create table universidade(
id_uni integer primary key auto_increment,
nome varchar(30),
telefone1 varchar(15),
telefone2 varchar(15),
cidade varchar(30),
uf varchar(2)
);

create table estudante(
id_al integer primary key auto_increment,
nome varchar(30),
telefone1 varchar(15),
telefone2 varchar(15),
cidade varchar(30),
uf varchar(2),
id_uni integer,
foreign key (id_uni) references universidade(id_uni)
);