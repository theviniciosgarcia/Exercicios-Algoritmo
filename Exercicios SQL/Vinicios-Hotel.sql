create database Continuada2;

use Continuada2;

create table hotel (
idHotel int primary key auto_increment,
nome varchar(45),
endereco varchar(45),
fkMatriz int,
Foreign key (fkMatriz) references hotel (idHotel)
);

create table quarto (
idQuarto int primary key auto_increment,
nome varchar(45),
andar char(3),
tipo varchar(30), constraint Checkt check (tipo in ('solteiro', 'casado')),
fkHotel int,
Foreign key (fkHotel) references hotel (idHotel)
);

insert into hotel (nome, endereco, fkMatriz) values
('SpTech', 'Haddock lobo', NULL),
('Ibis', 'Industrial', 1),
('Laguna', 'Atlantico', NULL),
('Master', 'Estados', NULL),
('Bigs', 'Ramalho', 4),
('Tartaruga', 'Augusta', 3);


insert into quarto (nome, andar, tipo, fkHotel) values
('Vinicios', '22', 'solteiro', 1),
('Pedro', '333', 'casado', 1),
('Daniel', '32', 'solteiro', 2),
('Vitor', '44', 'casado', 3),
('Eduardo', '32', 'solteiro', 4),
('Math', '213', 'casado', 5);

select * from hotel;
select * from quarto;

select * from quarto
join hotel on fkHotel = idHotel;

select * from hotel as h
join quarto as q on q.fkHotel = h.idHotel where tipo = 'solteiro';

select * from hotel h
join hotel m on h.fkMatriz = m.idHotel;

select nome, andar from quarto where nome like 'V%';

update quarto set tipo = 'casado' where idQuarto = 1;
select * from quarto where idQuarto = 1;

delete from quarto where idQuarto = 2;

select * from quarto as q
join hotel as h on q.fkHotel = h.idHotel;


drop table hotel;
drop table quarto;




