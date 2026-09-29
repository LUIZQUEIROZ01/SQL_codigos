create database gervendas;
use gervendas;

create table vendas (
	id_venda integer primary key auto_increment,
    produto varchar(50) not null,
    quantidade integer not null,
	preco decimal(10,2) not null
);

insert into vendas (produto, quantidade, preco) 
values 
	('Produto A', 10, 19.99),
	('Produto B', 5, 29.99),
    ('Produto A', 8, 19.99),
    ('Produto C', 15, 39.99),
    ('Produto B', 12, 29.99),
    ('Produto C', 7, 39.99);
    
select * from vendas;

# Contar total de vendas
select count(*) as total_de_vendas from vendas;

# Somar produtos vendidos
select sum(quantidade) as quantidade_de_produtos_vendidos from vendas;

# Preço médio do produto
select avg(preco) as Preco_Medio from vendas;

# Menor Preço
select min(preco) as Menor_preco from vendas;

# Maior Preço
select max(preco) as Maior_preco from vendas;

# Agrupar
select produto, sum(quantidade) as Total_produtos_vendidos
from vendas
group by produto;

select produto, sum(quantidade) as Total_quantidade
from vendas
group by produto
having Total_quantidade >= 18
order by Total_quantidade desc;