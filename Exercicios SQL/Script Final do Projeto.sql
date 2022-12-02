create database projeto;

use projeto;

CREATE TABLE usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
email varchar(45),
senha varchar(45)
);

CREATE TABLE comentario (
idComentario int primary key auto_increment,
titulo varchar(45),
descricao varchar(45),
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);

CREATE TABLE times (
idTimes int primary key auto_increment,
clube varchar(45),
tipo_torcedor varchar(45),
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);

insert into times values
(null, 'outro', 'fanatico', 1);



select * from usuario;
select * from comentario;
select * from times;

select count(tipo_torcedor) as louco,(select count(tipo_torcedor) 
as fanatico from times where tipo_torcedor = 'fanatico') 
as fanatico, (select count(tipo_torcedor) 
as comum from times where tipo_torcedor = 'comum') 
as comum from times where tipo_torcedor = 'louco';

select count(clube) as corinthians, (select count(clube) 
as santos from times where clube = 'santos')
as santos, (select count(clube) 
as sao_paulo from times where clube = 'sao_paulo')
as sao_paulo, (select count(clube) 
as palmeiras from times where clube = 'palmeiras') 
as palmeiras, (select count(clube) 
as outro from times where clube = 'outro') 
as outro from times where clube = 'corinthians';
