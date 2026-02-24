# Atividade Banco de Dados Para uma Empresa de Venda de Carros

## Contexto
Modele um banco de dados onde uma empresa de venda de carros quer uma base de dados dos clientes e dos carros que eles compraram. Na tabela cliente deve ter obrigatoriamente os campos, id, cpf, nome e email na dos carros deve ter id, modelo, cor e preço. 
Lembre-se que um cliente pode ter vários carros.

Create schema VendaCarros;

use Venda_Carros;

Create Table Clientes(
	id integer not null,
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
