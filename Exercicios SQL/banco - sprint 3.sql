
-- a)
create database venda;

-- b)
use venda;

-- c)
create table cliente (
idCliente int primary key auto_increment,
nome varchar(45),
email varchar(45),
fkIndicacao int null,
foreign key (fkIndicacao) references cliente(idCliente)
);

create table endereco (
idEndereco int primary key auto_increment,
logradouro varchar(45),
cep char(9),
bairro varchar(45),
fkCliente int, foreign key (fkCliente) references cliente(idCliente)
);

create table vendas (
idVenda int primary key auto_increment,
total_venda int,
data_venda date
);

create table produto (
fkCliente int,
foreign key (fkCliente)
references cliente(idCliente),
fkVendas int,
foreign key (fkVendas)
references vendas(idVenda),
nome varchar(45),
descricao varchar(45),
preco decimal(10,2),
primary key (fkCliente, fkVendas)
);

-- d)
insert into cliente (nome, email, fkIndicacao) values
('Vinicios', 'vinicios.fagundes@sptech.school', NULL),
('Pedro', 'pedro.marcato@sptech.school', 1),
('Matheus', 'math.che@sptech.school', NULL),
('Victor', 'victor.gads@sptech.school', 3),
('Eduardo', 'eduardo.gabriel@sptech.school', NULL);

insert into endereco (logradouro, cep, bairro, fkCliente) values
('Rua Ouricuri', '09290170', 'Pq João Ramalho', 1),
('Rua da Lama', '09245673', 'Vila Curuça', 2),
('Rua Haddock Lobo', '01414002', 'Paulista', 3),
('Rua Vitu', '0856773', 'Pq Che', 4);

insert into vendas (total_venda, data_venda) values
('600.00', '2022-09-30'),
('1800.00', '2022-10-30'),
('600.00', '2022-05-10'),
(500.00, '2022-03-03'),
(1000.00, '2022-11-20');

insert into produto (fkCliente, fkVendas, nome, descricao, preco) values
(1, 1, 'Iphone', 'Celular', '300.00'),
(2, 2, 'Samsumg', 'TV', '600.00'),
(3, 3, 'Samsung', 'Celular', '200.00'),
(4, 4, 'Mondial', 'Ventilador', '100.00'),
(1, 5, 'LG', 'TV', '500.00');

-- f)
select * from cliente;
select * from endereco;
select * from vendas;
select * from produto;

-- g)
select * from cliente c 
join vendas v on c.idCliente = v.idVenda;

-- h)
select c.nome, v.* from cliente c 
join vendas v on c.idCliente = v.idVenda;

-- i)
select * from cliente c 
join cliente i on c.idCliente = i.fkIndicacao
join vendas v on c.idCliente = v.idVenda;

-- j)
select * from cliente c 
join cliente i on c.idCliente = i.fkIndicacao
join vendas v on c.idCliente = v.idVenda
where i.fkIndicacao = 1;

-- l)
select * from cliente c 
join cliente i on c.idCliente = i.fkIndicacao
join produto p on c.idCliente = p.fkCliente
join vendas v on v.idVenda = p.fkVendas;

-- m)
select v.data_venda, p.nome, v.total_venda from vendas v
join produto p on v.idVenda = p.fkVendas;

-- n)
select p.nome, sum(v.total_venda) from vendas v
join produto p on v.idVenda = p.fkVendas
where p.nome = 'Iphone';

-- o)
insert into cliente (nome, email, fkIndicacao) values
('Daniel', 'daniel.sebastian@sptech,school', NULL);

select * from cliente c 
left join vendas v on c.idCliente = v.idVenda;

-- p)
select MIN(preco), MAX(preco) from produto;

-- q)
select sum(preco), avg(preco) from produto;

-- r)
select
	p.preco, v.total_venda
from vendas v
join produto p on v.idVenda = p.fkVendas
where total_venda = (select max(total_venda) from vendas)
or preco = (select avg(preco) from produto);

-- s)
select sum(distinct preco) from produto;

-- t)
select
	v.total_venda, count(preco)
from vendas v
join produto p on v.idVenda = p.fkVendas
where preco = 300.00;

-- prof tive duvidas nas ultimas, nas que usam os novos comando deu resultado porém não sei se ta 100% acertivo.






































