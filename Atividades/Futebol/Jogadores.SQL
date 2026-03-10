use aula_04;

create table jogador(
	id int auto_increment not null unique,
    id_time int,
    foreign key(id_time) references times(id),
    nome varchar(254) not null,
    numero_camisa int not null 
);

describe jogador;

alter table jogador add altura double not null;
alter table jogador add data_de_nascimento date not null;
 
 drop table jogador;
 show tables;

select * from jogador;

truncate table jogador;

alter table jogador modify numero_camisa varchar(3) not null unique;
alter table jogador change data_de_nascimento data_nsc date not null;
alter table jogador modify id int auto_increment not null primary key unique;


insert into jogador (nome,numero_camisa,altura,data_nsc) values("Cristiano Ronaldo",7,1.87,'1985/02/05');
insert into jogador (nome,numero_camisa,altura,data_nsc) values("Neymar Junior",10,1.75,'1992/02/05');
insert into jogador (nome,numero_camisa,altura,data_nsc) values("Yuri Chaves",9,1.65,'2007/08/01');
insert into jogador (nome,numero_camisa,altura,data_nsc) values("Gabriel Azevedo",12,1.75,'2007/10/12');
insert into jogador (nome,numero_camisa,altura,data_nsc) values("Matheus RD",15,1.72,'2008/03/13');
insert into jogador (nome,numero_camisa,altura,data_nsc) values("Estrela",14,1.80,'2007/02/08');
insert into jogador (nome,numero_camisa,altura,data_nsc) values("Vini Jr",8,1.76,'2000/07/12');
insert into jogador (nome,numero_camisa,altura,data_nsc) values("Giorgian de Arrascaeta",16,1.74,'1994/06/01');
insert into jogador (nome,numero_camisa,altura,data_nsc) values("Flavio Caça Rato",18,1.76,'1986/06/29');
insert into jogador (nome,numero_camisa,altura,data_nsc) values("Endrick",11,1.73,'2006/07/21');
