use sprint2;

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





