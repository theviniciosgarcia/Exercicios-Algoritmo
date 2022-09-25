create database PraticaFuncionario;

use PraticaFuncionario;

create table funcionario (
idFunc int primary key auto_increment,
nome varchar(45),
telefone varchar(45),
salario decimal(10,2),
fkSetor int,
foreign key (fkSetor)
references setor (idSetor)
);

create table setor (
idSetor int primary key auto_increment,
nome varchar(45),
numero int
);

create table acompanhante (
idAcomp int primary key auto_increment,
nome_acomp varchar(45),
tipo varchar(30),
dtNasc date,
fkSetor int,
foreign key (fkSetor)
references setor (idSetor),
fkFuncionario int,
foreign key (fkFuncionario)
references funcionario (idFunc)
);


insert into setor (nome, numero) values
('Producao', '167'),
('Escritorio', '188'),
('Gari', '200'),
('Farmaceutico', '144'),
('Adestrador', '199');

insert into funcionario (nome, telefone, salario, fkSetor) values
('Vinicios', '44789344', '1200.0', 1),
('Pedro', '44326711', '1200.0', 1),
('Maria', '44679022', '2000.0', 2),
('Vitor', '44786652', '3000.0', 3),
('Matheus', '44563122', '2500.0', 4);

insert into acompanhante (nome_acomp, tipo, dtNasc, fkSetor, fkFuncionario) values
('Lucas', 'Amigo', '1999-08-30', 1, 1),
('Thiago', 'Irmão', '1988-07-22', 1, 2),
('Eduardo', 'Primo', '2001-01-20', 2, 3),
('Cilas', 'Pai', '1979-02-01', 3, 4),
('Pedro', 'Tio', '1980-03-01', 4, 5);

select * from setor;
select * from funcionario;
select * from acompanhante;

select * from funcionario
join setor on fkSetor = idSetor;

select * from funcionario
join setor on fkSetor = idSetor where idSetor = 1;


select * from acompanhante
join funcionario on fkFuncionario = idFunc;

select * from acompanhante
join funcionario on fkFuncionario = idFunc where nome = 'Vinicios';

select * from acompanhante
join setor on fkSetor = idSetor
join funcionario on fkFuncionario = idFunc;











