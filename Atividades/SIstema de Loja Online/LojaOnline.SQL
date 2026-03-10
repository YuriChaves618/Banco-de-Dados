use lojaonline;

create table Clientes(

	cpf varchar(14) primary key unique not null,
    telefone varchar(50) not null,
    nome text not null,
    email varchar(254) not null
	
);

show tables;
describe Clientes;

insert into CLientes(cpf,telefone,nome,email) Values("122.222.222-22","7198765","Katarina da Silva","katarinadasilva765@gmail.com");

select * from Clientes;

create table Produtos(

	id integer primary key auto_increment unique not null,
    preco double not null,
    nome text not null,
    qtdEstoque integer not null

);

insert into Produtos(preco,nome,qtdEstoque) Values(23.4,"Adagas",20);

select * from Produtos;

describe Produtos;

create table Pedidos(
	
    id integer primary key auto_increment unique not null,
    dataPedido date not null,
    qtdComprada integer not null,
    cpfCliente varchar(14),
    foreign key (cpfCliente) references Clientes(cpf),
    IdProduto integer,
    Foreign key(IdProduto) references Produtos(id)
);

insert into Pedidos(dataPedido,qtdComprada,cpfCliente,IdProduto) Values ( "2009-09-02",6,"122.222.222-22",1);

select * from Pedidos;

describe Pedidos;
