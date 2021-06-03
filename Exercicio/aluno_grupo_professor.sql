create database  ProfessorAlunoGp;
use ProfessorAlunoGp;

create table tbGrupo(
idGrupo int primary key auto_increment,
nome varchar(50),
descricao varchar(100)

)auto_increment=100;

create table tbProfessor(
id_professor int primary key auto_increment,
nome varchar(50),
DisiplinaPrimeiroSem varchar(50)
) auto_increment=10000;

create table tbAluno(
ra int primary key,
nome varchar(45) not null,
email varchar(60) not null,
fkGrupo int,
foreign key (fkGrupo) references tbGrupo(idGrupo)
);

create table professorGp(
fkProfessor int,
foreign key (fkProfessor) references tbProfessor(id_professor),
fkProfessor2 int,
foreign key (fkProfessor2) references tbProfessor(id_professor),
fkGrupo int,
foreign key (fkGrupo) references tbGrupo(idGrupo),
nota decimal(4,2),
data_avaliacao datetime,
primary key (fkProfessor,fkProfessor2,fkGrupo,data_avaliacao)
);

insert into tbGrupo values (null,'VanCooing','Sensor de temperatura e humidade para monitoramento de vacinas'),
					       (null,'Cooingstein','Sensor de humidade e temperatura para monitoramento de plantações');

insert into  tbProfessor values (null,'Brandão','Projeto e Inovação'),	
								(null,'Caio','Algoritmos');
                                
insert into tbAluno values(1000,'Valentina Caroline','valentinacaroline@gmail.com',100),
						   (02211013,'Isabelly Maitê ','isabellymaite@gmail.com.br',100),
                           (02211001,'Andreia Catarina','andreiacataria@gmail.com',100),
                           (02211002,'Arthur  Gomes','arthurmarcelo@gmail.com',101),
                           (02211022,'Juan  Lima','juanrai@gmail.com.br',101),
                           (02211014,'Heitor Carlos Nunes','heitorcarlos@rgmail.com',101);
insert into professorGp values (10000,10001,100,8.00,'2021-05-20 12:00:00'),
								(10000,10001,101,10.00,'2021-05-20 13:30:00');
                                
select * from tbGrupo;

select * from tbProfessor;
select * from tbAluno;
select * from professorGp;
-- --------------------------
select * from tbGrupo inner join tbAluno on idGrupo=fkGrupo; 
select * from tbGrupo inner  join tbAluno on idGrupo=fkGrupo and idGrupo=100;
 select round(avg(nota),2) as media from professorGp;
 select max(nota) as nota_maxima ,min(nota) as nota_min from professorGp;
 select sum(nota) as soma_notas from professorGp;
 select * from tbProfessor  inner join tbGrupo inner join professorGp;
 select * from tbProfessor  inner join tbGrupo inner join professorGp  on idGrupo=101 and idGrupo =fkGrupo;
 select * from tbGrupo inner join professorGp on  fkprofessor=10000 and  idGrupo=fkGrupo;
 select * from tbGrupo  left join professorGp on  idGrupo=fkGrupo;
 --  nao consegui fazer
select fkProfessor as 'identificacao',round(avg(nota),2) as 'media notas', round(sum(nota),2) as 'soma_das_notas' from professorGp group by fkProfessor;
select fkGrupo as 'grupo',round(avg(nota),2) as 'media notas', round(sum(nota),2) as 'soma_das_notas' from professorGp group by fkGrupo;
select fkProfessor as 'identificacao',max(nota) as 'maior nota', min(nota) as 'menor nota' from professorGp group by fkProfessor;
select fkGrupo as 'identificacao',max(nota) as 'maior nota', min(nota) as 'menor nota' from professorGp group by fkGrupo;



--
