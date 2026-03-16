use sistemahospital;

create table Pacientes(
	cpf varchar(14) not null unique primary key,
    nome text not null,
    dataNascimento date not null,
    telefone varchar(50)

);

show tables;
describe Pacientes;

insert into Pacientes values("133.456.789-08","Silvio de Almeida",'2000-09-12',"719876545");

select * from Pacientes;

create table Medicos(
	crm integer auto_increment primary key unique not null,
    nome text not null,
    especialidade text not null
);

describe Medicos;

insert into Medicos(nome,especialidade) values("Drauzio Varela","Oncologista");

select * from Medicos;

create table Consultas(

	cpfCliente varchar(14),
    foreign key(cpfCliente) references Pacientes(cpf),
    crmMedico integer,
    foreign key(crmMedico) references Medicos(crm),
    dataNascimento date not null,
    diagnostico text not null
);

describe Consultas;

insert into Consultas(cpfCliente,crmMedico,dataNascimento, diagnostico) Values("133.456.789-08",01,'2001-06-01',"Não está com cancer");

select * from Consultas;
