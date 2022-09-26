create database treinador;

use treinador;

create table treinador (
idTreinador int primary key auto_increment,
nome varchar(45),
telefone varchar(45),
email varchar(100),
fkTreinadorex int,
foreign key (fkTreinadorex)
references treinador (idTreinador)
) auto_increment = 10;

create table nadador (
idNadador int,
nome varchar(45),
estado varchar(30),
dtNasc date,
fkTreinador int,
foreign key (fkTreinador) 
references treinador (idTreinador)
)auto_increment = 100;


insert into treinador (nome, telefone, email, fkTreinadorex) values
('Givanildo', '44567588', 'givanildosilva@gmail.com', 10),
('Paulo', '44352116', 'pauloantonio@gmail.com', NULL),
('Givaldo', '44657723', 'givaldofaria@gmail.com', 11),
('Tiringa', '44657821', 'tiringaf@gmail.com', NULL);

insert into nadador (nome, estado, dtNasc, fkTreinador) values
('Vinicios', 'São Paulo', '2003-09-30', 10),
('Thiago', 'São Paulo', '1999-07-10', 11),
('Matheus', 'Rio de janeiro', '2000-01-20', 12),
('Pedro', 'Bahia', '1998-03-11', 13);

select * from treinador;
select * from nadador;

select * from nadador
join treinador on fkTreinador = idTreinador;

select * from nadador
join treinador on fkTreinador = idTreinador where idTreinador = 10;

select * from nadador
join treinador on fkTreinadorex = idTreinador;

select * from nadador
join treinador on fkTreinadorex = idTreinador where idTreinador = 10;

select * from nadador
join treinador on fkTreinadorex = idTreinador;

select * from nadador
join treinador on fkTreinadorex = idTreinador where idTreinador = 10;


drop table treinador;
drop table nadador;


