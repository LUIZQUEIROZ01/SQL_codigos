create database funcionario2;
use funcionario2;

create table funcionario ( 
	codfunc integer primary key auto_increment,
    nomefunc varchar(60) not null,
    sexofunc varchar(1) not null,
    bairrofunc varchar(50) not null,
    salfunc decimal(10,2) not null,
    setorfunc varchar(60) null
);

insert into funcionario (nomefunc, sexofunc, bairrofunc, salfunc, setorfunc)
values
	('Larissa Menezes', 'F', 'Jabaquara', 1200.00, 'Marketing'),
    ('Selma Nunes', 'F', 'Grajaú', 3800.00, 'Vendas'),
    ('Leandro Henrique', 'M', 'Socorro', 2950.00, 'RH'),
    ('Amélia Jeremias', 'F', 'Socorro', 4200.00, 'Marketing'),
    ('Cláudio Jorge Silva', 'M', 'Jabaquara', 1480.00, 'Vendas'),
    ('Luciano Souza', 'M', 'Pedreira', 1000.00, 'Vendas'),
    ('Gabriela Santos Nunes', 'F', 'Jurubatuba', 4150.00, ''),
    ('Rafaela Vieira Jr', 'F', 'Jabaquara', 700.00, 'Marketing'),
    ('Suzana Crispim', 'F', 'Grajaú', 5600.00, 'Produção'),
    ('Sabrina Oliveira Castro', 'F', 'Pedreira', 2900.00, 'Marketing'),
    ('Jarbas Silva Nunes', 'M', 'Jurubatuba', 5300.00, 'Produção'),
    ('Ralf Borges', 'M', 'Jabaquara', 1600.00, 'Marketing'); 
    
    select * from funcionario;
    
    select salfunc from funcionario;
    

# Somar salário total dos funcionários: R$34.880,00

select sum(salfunc) as sal_total from funcionario;

# A quantidade de funcionários do setor de Marketing: 5
select count(*) as funcionarios_marketing from funcionario
where setorfunc = "Marketing";

# A média dos salários por departamento, ordenada em média decrescente
select setorfunc, avg (salfunc) as med_sal
from funcionario
group by setorfunc 
order by med_sal DESC;

# A quantidade de funcionários que ganha menos de 3.000,00 e que mora em Socorro
select count(*) as qtd_fun from funcionario
where salfunc < 3000.00 and bairrofunc = "Socorro";

# Setores com mais de 3 funcionários
select setorfunc, count(*) as qtd_func_setor from funcionario
group by setorfunc
having count(*) > 3;





