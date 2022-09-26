USE sprint2;

CREATE TABLE cliente(
idCliente int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
fixo varchar(45),
celular varchar(45),
endereco varchar(45),
rua varchar(45),
numero int,
cidade varchar(45)
);


CREATE TABLE pet(
idPet int primary key auto_increment,
tipo varchar(45),
nome varchar(45),
raca varchar(45),
dtNasc DATE,
fkCliente int,
foreign key (fkCliente)
references cliente (idCliente)
) auto_increment = 101;

insert into cliente (nome, sobrenome, fixo, celular, endereco, rua, numero, cidade) values
('Vinicios', 'Garcia', '44762876', '1198567423', 'Pq João ramalho', 'Ouricuri', '127', 'Santo andré'),
('Pedro', 'Afonso', '44567986', '11984236711', 'São mateus', 'Cachoeira Benfica', '1000', 'São Paulo'),
('Caliu', 'Palmeirense', '44325578', '1197645322', 'Perolas', 'São petesburgo', '222', 'Taboão da serra');

insert into pet (tipo, nome, raca, dtNasc, fkCliente) values
('Cachorro', 'Ruffus', 'Dobberman', '2018-09-30', 1),
('Gato', 'Nika', 'Cianes', '2020-05-11', 2),
('Cachorro','Rex', 'Vira Lata', '2000-07-12', 3),
('Gato', 'Nina', 'Cianes', '2018-10-15', 1);

select * from cliente;
select * from pet;

select * from pet 
join cliente on fkCliente = idCliente;
alter table cliente modify column nome varchar(50);
-- select * from pet where tipo in (101,103);
select * from pet where tipo = 'cachorro';
select nome, dtNasc from pet;
select * from pet order by nome asc;
select * from cliente order by endereco desc;
select * from pet where nome like 'R%';

insert into cliente (nome, sobrenome, fixo, celular, endereco, rua, numero, cidade) values
('Vitor', 'Garcia', '44567982', '11986774342', 'Pq João Ramalho', 'Ouricuri', '187', 'Santo andré');
select * from cliente where sobrenome = 'Garcia';
update cliente set fixo = '44796245' where idCliente = 101;
select * from cliente;
select * from pet
join cliente on fkCliente = idCliente where idPet = 101;
delete from pet where idPet = 102;
select * from pet;

drop table pet;
drop table cliente;

---------------------------------------------------------------------------------------

use sprint2;

create table pessoa(
idPessoa int primary key auto_increment,
nome varchar(45),
dtNasc DATE,
profissao varchar(45)
);

create table gasto (
idGasto int primary key auto_increment,
data_gasto DATE,
valor decimal(10,2),
descricao varchar(45),
fkPessoa int,
foreign key (fkPessoa)
references pessoa (idPessoa)
);

insert into pessoa (nome, dtNasc, profissao) values
('Vinicios', '2003-09-30', 'Jogador de futebol'),
('Pedro','2000-07-28', 'Programador'),
('Maria', '2003-11-28', 'Médica');

insert into gasto (data_gasto, valor, descricao, fkPessoa) values
('2022-09-06', '200.0', 'Luz', 1),
('2022-09-05', '150.0', 'Internet', 1),
('2022-09-03', '400.00', 'Celular', 3);
 
select * from pessoa;
select * from gasto;

select profissao, nome from pessoa;

select * from gasto
join pessoa on fkPessoa = idPessoa where idGasto = 1;

select * from gasto
join pessoa on fkPessoa = idPessoa;

alter table pessoa modify column nome varchar(50);
delete from gasto where idGasto = 3;

select * from pessoa;
select * from gasto;


