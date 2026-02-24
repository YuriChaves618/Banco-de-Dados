CREATE TABLE User(

  nome varchar(254) not null,
  data_nascimento date not null,
  cpf char(14) not null,
  id_usuario integer not null,
  idade int not null, 
  email varchar(254) not null,
  primary key(id_usuario)
);

insert into User values("Yuri Chaves Cabral","2007/08/01",'102.834.655-65',9347548,18,"yuricabral@gmail.com");
insert into User values("Master yi", "2009/02/21",'766.876.432-21', 82362634,41, "masteryi@gmail.com");
insert into User values("Bayonetta","1441/12/19",'666.666.666-66',782736463, 500,"umbrawitch@gmail.com");
insert into User values("Mista", '1982/12/03','444.444.444-44',12362363,18,"guidomista@gmail.com");
insert into User values("Trish", "2007/03/12",'546.653;653-56',48934857,18,"trishpink@gmail.com");
insert into User values("Diavolo","2000/09/23",'568.543.767-98',2193213,26,"diavoloboss@gmail.com");

Create Table endereco(

    id integer,
    id_user integer,
    primary key(id),
    foreign key(id_user) references User(id_usuario),
    numero_casa varchar(254) not null,
    rua text not null,
    bairro varchar(254) not null,
    complemento text,
    codigo_postal char(9) not null
    
);

insert into endereco values(01,9347548,"16B","Conselheiro Lafaite","Sarandy","Do lado da casa de B.U",'43567-758');

SELECT * FROM User;
SELECT * FROM endereco;
