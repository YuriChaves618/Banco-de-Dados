# Atividade Banco de Dados Para uma Empresa de Venda de Carros

## Contexto
Modele um banco de dados onde uma empresa de venda de carros quer uma base de dados dos clientes e dos carros que eles compraram. Na tabela cliente deve ter obrigatoriamente os campos, id, cpf, nome e email na dos carros deve ter id, modelo, cor e preço. 
Lembre-se que um cliente pode ter vários carros.

Create schema VendaCarros;

use VendaCarros;

Create Table Clientes(
	id_clientes integer not null,
	nome varchar(254) not null,
    cpf char(14) not null,
    email varchar(254) not null,
    telefone char(15) not null,
    numero_casa char(20) not null,
    rua varchar(254) not null,
    bairro varchar(254) not null,
    complemento text
);

insert into Clientes Values(378483,"Yuri Chaves",'102.837.364.00',"yuricabral@gmail.com",'7198761',15,
"Itapuã","Sarandy","Próximo a delegacia");

Select * from Clientes;

Create table Carros(
	ID_Carros integer not null, 
    Modelo text not null,
    Cor Varchar(254) not null,
    Preco double not null,
    placa Varchar(254) not null,
    Velocidade double not null
);

insert into Carros Values(21736724,"Peugeuot","Preto",56.890,"X543T",250);

Select * from Carros;

Create table Funcionarios(
	nome varchar(254) not null,
    id_funcionarios integer not null,
    cpf char(14) not null,
    telefone char(15) not null,
    email varchar(254) not null
);

insert into Funcionarios Values("Ronaldo",1837814,'321.564.876-87',"75635","ronaldosantos@gmail.com");

Select * from Funcionarios;
