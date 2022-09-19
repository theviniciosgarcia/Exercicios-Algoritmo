create database sprint2;

use sprint2;

create table atleta(
idatleta int primary key auto_increment,
nome varchar(40),
modalidade varchar(40),
qtdmedalha int,
fkpais int,
Foreign key (fkpais) references pais (idpais)
);

create table pais(
idpais int primary key auto_increment,
nome varchar(40),
capital varchar(30) 
); 

insert into pais(nome, capital) values 

('Brasil', 'Brasilia'),
('China', 'Shangai'),
('Alemanha', 'Berlim'),
('Estados Unidos', 'Washinton DC');

insert into atleta(nome, modalidade, qtdmedalha) values 

('Vinicios', 'futebol', '21'),
('Duda', 'futebol', '30'),
('Matheus', 'basquete', '18'),
('Katia', 'futebol', '22'),
('Joao', 'volei', '17');

update atleta set fkpais = 1 where idatleta = 1;
update atleta set fkpais = 1 where idatleta = 2;
update atleta set fkpais = 4 where idatleta = 3;
update atleta set fkpais = 2 where idatleta = 4;
update atleta set fkpais = 3 where idatleta = 5;
select * from atleta join pais on fkpais = idpais;
select atleta.nome, pais.nome from atleta join pais on fkpais = idpais;
select atleta.nome, pais.nome, capital from atleta join pais on fkpais = idpais;




create table musica(
idmusica int primary key auto_increment,
titulo varchar(40),
artista varchar(40), 
genero varchar(40),
fkalbum int,
foreign key (fkalbum) references album (idalbum)
);

create table album(
idalbum int primary key auto_increment,
nome varchar(40),
tipo varchar (30),
dtLancamento date,
constraint checktipo check (tipo in('digital', 'fisico')) 
);


insert into album(nome, tipo, dtlancamento) values 

('Michael jackson', 'digital', '2000-08-03'),
('Roberto carlos', 'fisico', '1990-05-28'),
('Astroworld', 'digital', '2017-07-26');

insert into musica(titulo, artista, genero) values 

('Yeloow', 'Coldplay','pop'), 
('Gostava tanto de você', 'Tim maia','mpb'), 
('Slim shady', 'eminem','rap');

select * from musica;
select * from album;
update musica set fkalbum = 1 where idmusica = 2;
update musica set fkalbum = 2 where idmusica = 3;
update musica set fkalbum = 3 where idmusica = 1;
select titulo, nome from musica join album on fkalbum = fkalbum;
select * from musica join album on fkalbum = idalbum; 
select musica.titulo,  album.nome from musica join album on fkalbum;
select titulo, nome, tipo from musica join album on fkalbum = fkalbum;