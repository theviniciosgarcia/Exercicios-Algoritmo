use sprint2;

create table professor (
idProfessor int primary key auto_increment,
nome varchar(50),
sobrenome varchar(50),
especialidade1 varchar(40),
especialidade2 varchar(40),
fkdisciplina int, foreign key (fkdisciplina) references disciplina (idDisc)
);

insert into professor(nome,sobrenome,especialidade1,especialidade2) values
('Vivian', 'Silva', 'Banco de dados', 'Arq comp'),
('Vinicios', 'Garcia', 'Algoritimo', 'Banco de dados'),
('Pedro', 'Afonso', 'Tecnologia da informação', 'Banco de dados'),
('Maria', 'Eduarda', 'Algoritimo', 'Arq comp'),
('Matheus', 'Martins', 'Tecnologia da informção', 'Arq comp'),
('Vitor', 'Garcia', 'Algoritmo', 'Banco de dados');

select * from professor;

create table disciplina (
idDisc int primary key auto_increment,
nomeDisc varchar(45)
);

insert into disciplina values
(null,'Banco de Dados'),
(null,'Algoritimo'),
(null,'Tecnologia da informção'),
(null,'Arq comp');

drop table professor;
drop table disciplina;

select * from professor join disciplina on fkdisciplina = idDisc;
update professor set fkdisciplina = 1 where idProfessor = 1;
update professor set fkdisciplina = 2 where idProfessor = 2;
update professor set fkdisciplina = 3 where idProfessor = 3;
update professor set fkdisciplina = 4 where idProfessor = 4;
select disciplina.nomeDisc, professor.nome from professor join disciplina on fkdisciplina = idDisc;
select disciplina.nomeDisc, professor.sobrenome from professor join disciplina on fkdisciplina = idDisc where idProfessor = 2;
select professor.especialidade1, disciplina.nomeDisc from professor join disciplina on fkdisciplina = idDisc order by especialidade1 asc;

---------------------------------------

create table curso (
idCurso int primary key auto_increment,
nome varchar(50),
sigla varchar(3),
coordenador varchar(30),
tipo varchar(30), constraint checkt check (tipo in ('home', 'presencial'))
);

insert into curso(nome,sigla,coordenador,tipo) values
('Banco de dados', 'BDD', 'Maria eduarda', 'Home'),
('Algoritimo', 'ATM', 'Pedro', 'Home'),
('Arq comp', 'ACP', 'Vinicios', 'Presencial'),
('Tecnologia da informação', 'TDI', 'Matheus', 'Presencial');

  -- um aluno pode ter varios cursos
create table aluno (
idAluno int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
fkcurso int, foreign key (fkcurso) references curso (idCurso)
);

insert into aluno(nome,sobrenome) values
('Vinicios', 'Garcia'),
('Maria', 'Eduarda'),
('Vitor', 'Garcia'),
('Pedro', 'Afonso');

drop table curso;
drop table aluno;

select * from aluno join curso on fkcurso = idCurso;
update aluno set fkcurso = 1 where idAluno = 1;
update aluno set fkcurso = 2 where idAluno = 2;
update aluno set fkcurso = 3 where idAluno = 3;
update aluno set fkcurso = 4 where idAluno = 4;
select curso.nome, aluno.nome from aluno join curso on fkcurso = idCurso;
select curso.nome, aluno.sobrenome from aluno join curso on fkcurso = idCurso where idAluno = 2;






