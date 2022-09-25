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












