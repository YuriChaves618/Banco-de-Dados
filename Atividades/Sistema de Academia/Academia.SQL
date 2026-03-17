use sistemaacademia;

create table Alunos(
	matricula integer auto_increment primary key not null unique,
    nome text not null,
    telefone varchar(50) not null
);

show tables;
describe Alunos;

insert into Alunos (nome,telefone)Values("Diana da Silva","7187655");

select * from Alunos;

create table Instrutor(
	cpf varchar(14) primary key not null unique,
    nome text not null,
    especialidade text not null
);

describe Instrutor;

insert into Instrutor Values("124.765.843-09","Hanniel de Jesus","Hipertrofia");

select * from Instrutor;

create table Treinos(
	cpfInstrutor varchar(14),
    foreign key(cpfInstrutor) references Instrutor (cpf),
    matriculaAluno integer,
    foreign key(matriculaAluno) references Alunos(matricula),
    id integer auto_increment primary key not null unique,
    nome text not null,
    nivelDificuldade varchar(50) not null

);

describe Treinos;

insert into Treinos(cpfInstrutor,matriculaAluno,nome,nivelDificuldade) Values("124.765.843-09",01,"Treino de Posterior","Média Dificuldade");

select * from Treinos;
