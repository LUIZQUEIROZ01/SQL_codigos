create database Aula_28_09_26;
use Aula_28_09_26;

create table departamento (
id integer primary key auto_increment,
nome varchar (50),
localizacao varchar (50),
orcamento decimal (10,2)
);

insert into departamento (nome, localizacao, orcamento) values
('TI', 'Predio Principal - 3º andar', 500000.00),
('Recursos Humanos', 'Anexo A - 1º andar', 150000.50),
('Marketing', 'Predio Principal - 2º andar', 250000.00),
('Financeiro', 'Anexo B  - térreo', 350000.75),
('Vendas', 'Comercial', 800000.00);

#COMMIT
START TRANSACTION;

UPDATE departamento SET orcamento = orcamento + 1000.00 WHERE nome = 'TI';

UPDATE departamento SET orcamento = orcamento + 1000.00 WHERE nome = 'Financeiro';

COMMIT;

#ROLLBACK
START TRANSACTION;

UPDATE departamento SET orcamento = orcamento - 5000.00 WHERE nome = 'Marketing';

UPDATE departamento SET orcamento = orcamento - 3000.00 WHERE nome = 'Vendas';

ROLLBACK;

 # SAVEPOINT
START TRANSACTION;

UPDATE departamento SET orcamento = orcamento + 7000.00 WHERE nome = 'Recursos Humanos';

SAVEPOINT ajuste_parcial;

UPDATE departamento SET orcamento = orcamento + 2000.00 WHERE nome = 'Vendas';

ROLLBACK TO ajuste_parcial;

COMMIT;