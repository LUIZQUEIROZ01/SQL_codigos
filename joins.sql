create DATABASE GER_JOIN;
use GER_JOIN;

create table funcionarios (
	id integer primary key auto_increment,
    nome varchar(255),
    especialidade varchar(255)
);

create table dependentes (
	id integer primary key auto_increment,
    nome varchar(255),
    cod_func integer not null,
    foreign key (cod_func) references funcionarios (id)
);

insert into funcionarios (nome, especialidade) values
	('José', 'Engenheiro'),
    ('João', 'Mestre de obras'),
    ('Maria', 'Contabilista');
        
insert into dependentes (nome, cod_func) values
	('Pedro', 1),
    ('Alice', 1),
    ('Luana', 3);

select * from funcionarios;
select * from dependentes;

#INNER JOIN
select func.nome nome_func, dep.nome nome_dep
from funcionarios func
Inner join dependentes dep
on func.id = dep.cod_func;

# LEFT JOIN
select func.nome nome_func, dep.nome nome_dep
from funcionarios func
left join dependentes dep
on func.id = dep.cod_func;

# LEFT EXCLUDING JOIN
select func.nome nome_func, dep.nome nome_dep
from funcionarios func
left join dependentes dep
on func.id = dep.cod_func
where dep.cod_func is null;

# RIGHT JOIN
