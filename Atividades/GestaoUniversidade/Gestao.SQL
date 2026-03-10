use gestaouniversidade;

Create table Alunos(
	
    matricula integer primary key auto_increment unique not null,
    nome text not null,
    curso text not null,
    email varchar(254) not null

);

show tables;
describe Alunos;

insert into Alunos(nome,curso,email) Values("RD Silva","Computaria","RDMogador@gmail.com");

select * from Alunos;

Create table Professores(
	
    id integer primary key auto_increment unique not null,
    nome text not null,
    Especializacao text not null
    
);

describe Professores;

insert into Professores(nome,Especializacao) Values("Odette Amanda","Engenheira");

select * from Professores;

Create table Disciplina(

	id integer primary key auto_increment unique not null,
    idProfessor integer,
    nome text not null,
    cargaHoraria integer not null,
    foreign key (idProfessor) references Professores(id) 
    
);

describe Disciplina;
insert into Disciplina (idProfessor,nome,cargaHoraria) Values (01,"Programa","180");
select * from Disciplina;

Create table Matriculas(

	datasemestre date not null,
    MatriculaAluno integer,
    idDisciplina integer,
    foreign key(MatriculaAluno) references Alunos(matricula),
    foreign key(idDisciplina) references Disciplina(id)
    
);

describe Matriculas;
insert into Matriculas (datasemestre,MatriculaAluno,idDisciplina) Values('2026-03-10',01,01);
select * from Matriculas;
