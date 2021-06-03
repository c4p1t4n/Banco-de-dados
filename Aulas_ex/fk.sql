create database Digitalschool;
use Digitalschool;
create Table curso (
	idCurso int primary key auto_increment,
    nomeCurso char(5),
    coordenador varchar(15)  

) auto_increment = 100;
insert into curso values (null,"ADS","Gerson"),
						 (null,"CCO","Marise"),
                         (null,"Redes","Alex");
create table aluno (
 ra int primary key auto_increment,
 nomeAluno varchar(40),
 bairro varchar(30),
 fkCurso int,
 foreign key(fkCurso)references curso(idCurso)
) auto_increment = 5000;

insert into aluno values(null,'Maria','Paraiso',100),
						(null,'João','Consolação',101),
                        (null,'Mickey','Disney',100),
                        (null,'Pateta','Disney',102);
desc aluno;
select * from aluno;
select * from curso;
-- Exibir os dados dos alunos  e dos cursos correspondentes
-- JEITO ERRADO DE FAZER
select * from aluno,curso; 
-- JEITO CERTO DE FAZER
select * from aluno,curso where  fkcurso = idCurso;
-- Exibir os dados dos alunos e dos cursos correspondentes 
-- somente ADS
select  * from aluno	
	where fkCurso = idCurso and nomeCurso ='ADS'; 

	
