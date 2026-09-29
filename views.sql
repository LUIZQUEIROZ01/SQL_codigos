select * from funcionarios;
select * from dependentes;

create view vw_lista_funcionarios AS
select nome, especialidade
from funcionarios;

select * from vw_lista_funcionarios;

create view vw_lista_dependentes AS
select nome
from dependentes;

select * from vw_lista_dependentes;

create view vw_funcionario_dependente AS
select funcionarios.nome nome_func, dependentes.nome nome_dep
from funcionarios 
Inner join dependentes
on funcionarios.id = dependentes.cod_func;

select * from vw_funcionario_dependente;