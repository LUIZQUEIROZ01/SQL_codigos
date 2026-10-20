create DATABASE bd_clientes;
use bd_clientes;

create table tbl_clientes (
codigo integer not null primary key auto_increment,
nome varchar(40) not null,
sexo char(1) not null
);

insert into tbl_clientes (nome, sexo) values
("Humberto", "M"),
("Ayrton Senna", "M"),
("Xuxa", "F");

DELIMITER $$
create procedure sp_lista_clientes (IN opcao INT)
BEGIN
	IF opcao = 0 THEN
		SELECT * FROM tbl_clientes WHERE sexo = 'F';
	ELSEIF opcao = 1 THEN
		SELECT * FROM tbl_clientes WHERE sexo = 'M';
	ELSE 
		SELECT * FROM tbl_clientes;
	END IF;
END $$

CALL sp_lista_clientes (0);
CALL sp_lista_clientes (1);
CALL sp_lista_clientes (7);

create table tbl_clientes2 (
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
idade INTEGER NOT NULL,
sexo CHAR(1) NOT NULL,
email VARCHAR(100),
telefone VARCHAR(15),
endereco VARCHAR(255) NOT NULL
);

insert into tbl_clientes2 (nome, idade, sexo, email, telefone, endereco) values
('Cliente A', 19, 'M', 'qwerty@hotmail.com', '(15) 3542-1122', 'Av. Brasil'),
('Cliente B', 29, 'F', 'zxcvbnm@hotmail.com', '(15) 3542-9900', 'Rua Polonia'),
('Cliente C', 15, 'M', 'asdfg@hotmail.com', '(15) 3542-6677', 'Av. Brasil');
 
 DELIMITER $$
 
 create procedure lista_idade (IN opcao INT)
 BEGIN
	IF opcao < 18 THEN
		SELECT * FROM tbl_clientes2 WHERE idade < 18;
	ELSE 
		SELECT * FROM tbl_clientes2 WHERE idade >= 18;
	END IF;
END $$

CALL lista_idade (19);

create table clientes_audit (
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome Varchar (100) NOT NULL,
idade INTEGER,
sexo CHAR (1),
data_exclusao TIMESTAMP 
);

DELIMITER $$
CREATE TRIGGER trg_cliente_delete
AFTER DELETE ON tbl_clientes2
FOR EACH ROW
BEGIN
	INSERT INTO clientes_audit (nome, sexo, idade)
    VALUES (OLD.nome, OLD.sexo, OLD.idade);
END $$

DELETE FROM tbl_clientes2 WHERE id = 1;

# EXERCICIOS

DELIMITER $$ 
CREATE TRIGGER trg_padroniza_sexo
BEFORE INSERT ON tbl_clientes2
FOR EACH ROW
BEGIN 
 INSERT INTO tbl_sexo (nome, sexo, idade) 
 VALUES (nome, UPPER(sexo), idade);
END $$




 