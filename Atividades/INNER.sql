use sistemacursos;

create table Alunos(
	
    id integer auto_increment primary key unique not null,
    nome varchar(254) not null,
    idade integer not null,
    telefone varchar(50) not null
);

show tables;
describe Alunos;

insert into Alunos(nome,idade,telefone) Values("João Pedro","18","7185435");
insert into Alunos(nome,idade,telefone) Values("Maria Julia","20","71855432");
insert into Alunos(nome,idade,telefone) Values("Pedro Lucas","19","7185435");
insert into Alunos(nome,idade,telefone) Values("Beverly Hills","23","7186253");
insert into Alunos(nome,idade,telefone) Values("Jake Haloran","25","7186253");
insert into Alunos(nome,idade,telefone) Values("James Backester","28","7186253");
insert into Alunos(nome,idade,telefone) Values("Bill Skarsgard","23","7186432");

select * from Alunos;

create table Cursos(

	id_alunos integer,
    foreign key(id_alunos) references Alunos(id),
	id_cursos integer primary key auto_increment unique not null,
    nome varchar(254) not null,
    carga_horaria integer not null

);

describe Cursos;

insert into Cursos (id_alunos,nome,carga_horaria) values(1,"TI",1200);
insert into Cursos (id_alunos,nome,carga_horaria) values(2,"Direito",1500);
insert into Cursos(id_alunos,nome,carga_horaria) values(3,"Contabilidade",1600);
insert into Cursos (id_alunos,nome,carga_horaria) values(5,"TI",1200);
insert into Cursos (id_alunos,nome,carga_horaria) values(6,"TI",1200);
insert into Cursos (id_alunos,nome,carga_horaria) values(7,"Direito",1500);


select * from Cursos;

select alunos.nome, cursos.nome from Alunos inner join Cursos on Cursos.id_alunos = id;
select alunos.nome, cursos.nome as cursos from Alunos left join Cursos on Cursos.id_alunos = id;

select count(*)from Cursos where nome = "TI";
select count(*) from Cursos where nome = "Direito";
select count(*) from Cursos where nome = "Contabilidade";

select nome as nome_do_curso, count(id_alunos) as total_de_alunos from Cursos group by nome having  COUNT(id_alunos) > 1;

select alunos.nome from Alunos left join Cursos on alunos.id = cursos.id_alunos where cursos.id_cursos is null;

select cursos.nome as curso, count(alunos.id) as quantidade_alunos from Cursos inner join Alunos on cursos.id_alunos = alunos.id group by cursos.nome;

select cursos.nome as curso, avg(alunos.idade) as media_idade from cursos inner join alunos on cursos.id_alunos = alunos.id group by cursos.nome;

select alunos.nome as aluno, cursos.nome as curso from alunos left join cursos on alunos.id = cursos.id_alunos order by alunos.nome asc;

select cursos.nome as curso, count(alunos.id) as total_alunos from cursos inner join alunos on cursos.id_alunos = alunos.id group by cursos.nome;

select cursos.nome as curso, count(alunos.id) as total_alunos from cursos inner join alunos on cursos.id_alunos = alunos.id group by cursos.nome
having count(alunos.id) < 3;

select cursos.nome as curso, max(alunos.idade) as maior_idade from Cursos inner join Alunos on cursos.id_alunos = alunos.id
group by cursos.nome;

select cursos.nome as curso, min(alunos.idade) as menor_idade from cursos inner join alunos on cursos.id_alunos = alunos.id;

select alunos.nome as aluno, cursos.nome as curso from alunos inner join cursos on alunos.id = cursos.id_alunos where cursos.nome = "TI";

select cursos.nome as curso, count(alunos.id) as quantidade_alunos from cursos inner join alunos on cursos.id_alunos = alunos.id group by cursos.nome
order by quantidade_alunos desc;

select cursos.nome as curso, sum(alunos.idade) as soma_idades from cursos inner join alunos on cursos.id_alunos = alunos.id
group by cursos.nome;

select cursos.nome as curso, avg(alunos.idade) as media_idade from cursos inner join alunos on cursos.id_alunos = alunos.id group by cursos.nome
having avg(alunos.idade) > 20;

select alunos.nome as aluno, cursos.nome as curso from alunos left join cursos on alunos.id = cursos.id_alunos;

select count(*) from cursos;

select a.nome as nome_aluno, c.nome as nome_curso from alunos as a inner join cursos as c on a.id = c.id_alunos;
