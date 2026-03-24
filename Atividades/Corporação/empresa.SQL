use empresa;

set SQL_SAFE_UPDATES = 0;

create table Funcionarios(

	id integer auto_increment primary key unique not null,
    nome varchar(254) not null,
    salario double not null,
    departamento varchar(254) not null,
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    
);

describe Funcionarios;
show tables;

insert into Funcionarios(nome,salario,departamento) values("Carlos", 3000, "TI");
insert into Funcionarios(nome,salario,departamento) values("Maria", 4500, "RH");
insert into Funcionarios(nome,salario,departamento) values("João", 5000, "TI");
insert into Funcionarios(nome,salario,departamento) values("Ana", 3500, "Financeiro");
insert into Funcionarios(nome,salario,departamento) values("Pedro", 2800, "RH");

select * from Funcionarios;

select count(*) from Funcionarios;

select * from Funcionarios where departamento = "TI";

select count(*) from Funcionarios where departamento = "TI";

select * from Funcionarios where salario > 4000;

select count(*) from Funcionarios where salario > 4000;

insert into Funcionarios (nome, salario, departamento) values ("Juliana",4200,"TI");

update Funcionarios set salario = 3500 where id = 1;

update Funcionarios set salario = salario + ( salario * 0.1) where departamento = "RH";

delete from Funcionarios where nome = "Pedro";

select * from Funcionarios
order by salario DESC;

select AVG (salario) from Funcionarios;

select max(salario) from Funcionarios;
select min(salario) from Funcionarios;

update Funcionarios set salario = salario + ( salario * 0.05) where departamento = "TI" and salario < 4000;
