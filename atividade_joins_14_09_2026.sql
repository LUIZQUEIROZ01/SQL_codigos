create database empresa_joins;
use empresa_joins;

create table departamento (
depcodigo integer primary key auto_increment,
depnome varchar (50)
);

create table funcionario (
funcodigo integer primary key auto_increment,
funome varchar (60),
funascimento date not null,
funsalario decimal (10, 2) not null,
depcodigo integer not null,
foreign key (depcodigo) references departamento (depcodigo)
);

create table dependente (
depencodigo integer primary key auto_increment,
depenome varchar (100),
funcodigo integer not null,
foreign key (funcodigo) references funcionario (funcodigo)
);

insert into departamento (depnome) values
('Recursos Humanos'),
('Tecnologia da Informação'),
('Financeiro'),
('Marketing'),
('Vendas'),
('Operações'),
('Jurídico'),
('Logística'),
('Produção'),
('Qualidade');

create view departamentos AS
select * from departamento;

select * from departamentos;

insert into funcionario (depcodigo, funome, funascimento, funsalario) values
(1, 'Ana Silva', '1990-05-15', 5500.00),
(2, 'Bruno Costa', '1988-11-01', 7200.00),
(3, 'Carlos Dias', '1995-02-20', 4800.00),
(4, 'Daniel Moreira', '1992-09-30', 6100.00),
(5, 'Elisa Fernandes', '1985-07-12', 8000.00),
(1, 'Fábio Guedes', '1998-01-05', 3900.00),
(2, 'Gabriela Lima', '1983-03-18', 9500.00),
(8, 'Heitor Bastos', '1993-12-25', 4300.00),
(9, 'Isabela Rocha', '1996-06-08', 4100.00),
(5, 'Jonas Martins', '1991-04-14',7600.00);

insert into dependente (funcodigo, depenome) values 
(1, 'Lucas Silva'),
(1, 'Maria Silva'),
(2, 'Sofia Costa'),
(3, 'Laura Dias'),
(3, 'Marco Dias'),
(5, 'Arthur Fernandes'),
(5, 'Júlia Fernandes'),
(7, 'Pedro Lima'),
(8, 'Beatriz Bastos'),
(10, 'Rafael Martins'); 

# Atividade 1

select funciona







