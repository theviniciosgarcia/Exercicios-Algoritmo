create database treinador;

use treinador;


create table nadador (
idNadador int primary key auto_increment,
nome varchar(45),
estado varchar(30),
dtNasc date
)auto_increment = 100;

create table treinador (
idTreinador int primary key auto_increment,
nome varchar(45),
telefone varchar(45),
email varchar(100),
fkTreinador int,
foreign key (fkTreinador) 
references nadador (idNadador),
fkTreinador_ex int,
foreign key (fkTreinador_ex)
references treinador (idTreinador)
) auto_increment = 10;


insert into treinador (nome, telefone, email, fkTreinador, fkTreinador_ex) values
('Givanildo', '44567588', 'givanildosilva@gmail.com', 101, NULL),
('Paulo', '44352116', 'pauloantonio@gmail.com', 102, NULL),
('Givaldo', '44657723', 'givaldofaria@gmail.com', 103, NULL);

insert into nadador (nome, estado, dtNasc) values
('Vinicios', 'São Paulo', '2003-09-30', 10),
('Thiago', 'São Paulo', '1999-07-10', 11),
('Matheus', 'Rio de janeiro', '2000-01-20', 12),
('Pedro', 'Bahia', '1998-03-11', 12);

select * from treinador;
select * from nadador;

drop table treinador;
drop table nadador;


