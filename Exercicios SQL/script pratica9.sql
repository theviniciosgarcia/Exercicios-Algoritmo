create database pratica9;
use pratica9;

create table grupo (
idGrupo int primary key auto_increment,
nome varchar(45)not null,
descricao varchar(100)not null
);

create table aluno (
ra char(8) primary key,
nome varchar(45)not null,
email varchar(45),
grupo int not null,
constraint fkGrupoAluno foreign key (grupo) references grupo(idGrupo));

create table professor (
idProfessor int primary key auto_increment,
nome varchar(45)not null,
disciplina varchar(45)not null
)auto_increment=10001;

create table avaliacao (
idAvaliacao int auto_increment,
professor int,
grupo int,
nota decimal(4,2) not null,
dta_hora datetime not null,
constraint fkProfessorAvaliacao foreign key (professor) references professor(idProfessor),
constraint fkGrupoAvaliacao foreign key (grupo) references grupo(idGrupo),
constraint chkNota check(nota >=0 and nota<=10), 
primary key (idAvaliacao, professor, grupo) 
);

insert into grupo (nome, descricao) value
("grupo-01","Controle de temperatura de vinho"),
("grupo-02","Controle de temperatura de soja"),
("grupo-03","Controle de temperatura de supermercado"),
("grupo-04","Controle de temperatura de sorvete");

insert into aluno value 
("01222101","Vinicios Garcia","vinicios.garcia@sptech.school",1),
("01222102", "Pedro Afonso","pedro.afonso@sptech.school",1),
("01222103", "Eduardo Gabriel","eduardo.gabriel@sptech.school", 1),
("01222104", "Gabriel Kenji","gabriel.kenji@sptech.school", 2),
("01222105", "Matheus Ribeiro","matheus.ribeiro@sptech.school", 2),
("01222106", "Victor Gabriel","victor.gabriel@sptech.school", 2),
("01222107", " Daniel Sabastian","daniel.sebastian@sptech.school", 3),
("01222108", "Lucas Martins","lucas.martins@sptech.school", 3),
("01222109", "Vinicius Guerato","vinicius.guerato@sptech.school", 3),
("01222110", "Matias Che","matias.vg@sptech.school", 4),
("01222111", "Matheus Pires","metheus.pires@sptech.school", 4),
("01222112", "Maria Eduarda","maria.eduarda@sptech.school", 4);

insert into  professor (nome,disciplina) values
('Vivian','Banco de Dados'), 
('Eduardo', 'Arquitetura'),   
('Caio','Algoritimo'),   
('Fernando','PI'),   
('Thiago','Socioemocional'),   
('Monica', 'Tecnologia da informacao');

insert into avaliacao (professor,grupo,nota,dta_hora) value
(10001, 1, 10,"2022-11-15 13:56:00"),
(10002, 2, 8,"2022-11-13 12:10:00"),
(10003, 3 ,7,"2022-11-14 13:30:00"),
(10004, 4, 6,"2022-11-11 14:30:00"),
(10005, 1, 9,"2022-11-19 15:45:00"),
(10006, 2, 9.5,"2022-11-13 11:23:00"),
(10001, 3, 9.9,"2022-11-15 13:31:00"),
(10002, 4, 6.4,"2022-11-13 15:12:00"),
(10003, 1, 10,"2022-11-14 14:00:00"),
(10004, 2, 9,"2022-11-11 14:12:00"),
(10005,3,8.7,"2022-11-12 15:44:00"),
(10006, 4, 7.7,"2022-11-14 13:33:00");

select * from aluno;

select * from professor;

select * from grupo;

select * from avaliacao;

select a.ra, a.nome, a.email, g.nome  from aluno a join grupo g
on a.grupo = g.idGrupo;


select a.ra, a.nome, a.email, g.nome  from aluno a join grupo g
on a.grupo = g.idGrupo
where g.idGrupo = 1;

select avg(nota) media from avaliacao;

select min(nota) minima, max(nota) maxima from avaliacao;

select sum(nota) soma from avaliacao;

select p.nome, p.disciplina, g.nome, g.descricao, a.dt_hora from professor p
join avaliacao a on p.idProfessor = a.professor
join grupo g on g.idGrupo = a.grupo; 

select p.nome, p.disciplina, g.nome, g.descricao, a.dta_hora from professor p
join avaliacao a on p.idProfessor = a.professor
join grupo g on g.idGrupo = a.grupo 
where g.idGrupo =3; 

select p.nome, p.disciplina, g.nome, g.descricao, a.dta_hora from professor p
join avaliacao a on p.idProfessor = a.professor
join grupo g on g.idGrupo = a.grupo 
where p.nome in("Vivian"); 

select g.nome ,a.nome , p.nome, n.dta_hora from grupo g
join aluno a on a.grupo = g.idGrupo
join avaliacao n on n.grupo = g.idGrupo
join professor p on n.professor = p.idProfessor; 

select nota, count(nota) quantidade from avaliacao
group by nota; 

select p.nome, p.disciplina, avg(a.nota) media, sum(a.nota) soma from professor p
join avaliacao a on p.idProfessor = a.professor
group by p.nome; 

select g.nome, avg(a.nota) media, sum(a.nota) soma from grupo g
join avaliacao a on g.idGrupo = a.grupo
group by g.nome; 

select p.nome, p.disciplina, min(a.nota) minima, max(a.nota) maxima from professor p
join avaliacao a on p.idProfessor = a.professor
group by p.nome; 

select g.nome, min(a.nota) minima, max(a.nota) maxima from grupo g
join avaliacao a on g.idGrupo = a.grupo
group by g.nome; 