create DATABASE empresa;

use empresa;

create table Departamento (
	depcodigo integer primary key auto_increment,
    depnome varchar (50)
);

create table Funcionario (
	funcodigo integer primary key auto_increment,
    funnome varchar (100),
    funnascimento date,
    funsalario numeric (10,2),
    depcodigo integer,
    foreign key (depcodigo) references Departamento (depcodigo)
);
 
create table Dependente (
	depencodigo integer primary key auto_increment,
    depennome varchar (100),
    funcodigo integer,
    foreign key (funcodigo) references Funcionario (funcodigo)
);


