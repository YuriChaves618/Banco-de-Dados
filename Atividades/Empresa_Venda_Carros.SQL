# Atividade Banco de Dados Para uma Empresa de Venda de Carros

## Contexto
Modele um banco de dados onde uma empresa de venda de carros quer uma base de dados dos clientes e dos carros que eles compraram. Na tabela cliente deve ter obrigatoriamente os campos, id, cpf, nome e email na dos carros deve ter id, modelo, cor e preço. 
Lembre-se que um cliente pode ter vários carros.

Create schema VendaCarros;

use Vendacarros;

Create table Clientes(

	idClientes integer not null,
    Primary key (idClientes),
    cpf char(14) not null,
    nome varchar(254) not null,
    email varchar(254) not null,
    telefone char(50) not null,
    numeroCasa char(11) not null,
    rua varchar(254) not null,
    bairro varchar(254) not null,
    complemento text

);

insert into Clientes Values (10298389,'111.111.111-11',"Monkey D.Luffy","monkey.d.luffy@gmail.com",'71.99999','1150',
"Grand Line","Alabasta","Próximo ao Crocodile");

select * from Clientes;

Create Table Funcionarios(

	idFuncionarios integer not null,
    Primary Key (idFuncionarios),
    nome varchar(254) not null,
    cpf char (14) not null,
    telefone char(50) not null,
    email varchar(254) not null
);

insert into Funcionarios Values ( 18414913, "Nico Robin",'777.777.777-77','71.88888',"Miss All Sunday@gmail.com");

Select * from Funcionarios;

Create Table Carros(

	idCarros integer not null,
    Primary key(idCarros),
    modelo text not null,
    cor varchar(254) not null,
    Preco double not null,
    Placa varchar(254) not null,
    Velocidade text not null

);

insert into Carros Values (934737854,"Going Merry","Marrom e Branco",30000000,"One Piece","74km/h");

Select * From Carros;

Create Table CompraVenda(
	
    datacompra date not null,
    idCompra integer not null,
    idclientes integer,
    idcarros integer,
    idfuncionarios integer,
    primary key (idCompra),
    foreign key (idclientes) references Clientes (idClientes),
    foreign key (idcarros) references Carros (idCarros),
    foreign key (idfuncionarios) references Funcionarios (idFuncionarios),
    formaPagamento varchar (254) not null
);

insert into CompraVenda values ("2006/01/10",1283784,"3000 Berries");

Select * From CompraVenda;

Create table Distribuidora(
	
    nome varchar(254) not null,
    cnpj varchar(254) not null,
    primary key (cnpj),
    telefone char(50) not null,
    email varchar(254) not null,
    rua varchar(254) not null,
    bairro varchar(254) not null,
    complemento text
);

insert into Distribuidora Values("TCG","57.900.202/0001-07",'7187645',"webmail.tcgcard.com.br","Rua da Glória",
"Liberdade","Próximo ao tesouro One Piece");

Select * From Distribuidora;
