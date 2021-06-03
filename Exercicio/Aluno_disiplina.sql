create database Alunos_disiplina;
Use  Alunos_disiplina;
create table tbAluno (
ra int primary key auto_increment,
nome varchar(45),
Bairro varchar(45)
)auto_increment=02211040;

create table tbDisiplina(
rd int primary key auto_increment,
nome varchar(40)
)auto_increment=1000;

create table tbAssociativa (
fkAluno int,
foreign key (fkAluno) references tbAluno(ra),
fkDisiplina int,
foreign key (fkDisiplina) references tbDisiplina(rd),
primary key (fkAluno,fkDisiplina),
media decimal(4,2),
faltas int
);
insert into  tbAluno values (null,'Osvaldo Vicente','Jardim Portal I e II'),
							(null,'Isabel Alana ','Vila Pereira Cerca'),
                            (null,'Bianca Catarina','Parque Novo Mundo'); 

insert into tbDisiplina values (null,'Banco de dados'),
							   (null,'Algoritmos'),
                               (null,'Arquitetura computacional'),
							   (null,'Pesquisa e inovação'),
                               (null,'Sistemas operacionais');
insert into tbAssociativa values 			   (02211040,1000,8.00,0),
											   (02211040,1001,7.00,4),
                                               (02211040,1002,6.75,3),
                                               (02211040,1003,10.00,0),
                                               (02211041,1003,9.37,0),
                                               (02211041,1004,8.48,2),
                                               (02211042,1000,9.93,1),
                                               (02211042,1002,9.95,9),
                                               (02211042,1003,9.87,0),
                                               (02211042,1004,9.49,7);
-- Exibir os dados das tabelas separadamentes
select * from tbAluno;
select * from tbDisiplina;
select * from tbAssociativa;
-- Exibir os dados dos alunos  e das disiplinas correspondentes 
select * from tbAluno,tbDisiplina,tbAssociativa where  ra = fkAluno and fkDisiplina=rd;
-- Exibir os dados dos alunos  e das disiplinas correspondentes mas somente uma disiplina
select * from tbAluno,tbDisiplina,tbAssociativa where  ra = fkAluno and fkDisiplina=rd and tbDisiplina.nome like 'Banco%';
-- exibir os dados de um aluno e os dados da disiplinas desse aluno
select * from tbAluno,tbDisiplina,tbAssociativa where  ra = fkAluno and fkDisiplina=rd and tbAluno.nome like 'Osval%';
-- exibir a soma das medias e a media da quantidade de faltas
select sum(media) as soma_das_medias,round(avg(faltas),2) as media_de_faltas from tbAssociativa; 
-- exibir a maior e menor media
select max(media) as maior_media,min(media) as menor_media from tbAssociativa; 
-- exibir a maior e menor quantidade de faltas
select max(faltas) as maior_faltas,min(faltas) as menor_faltas from tbAssociativa; 
-- exibir a maior e menor media agrupado por disiplina
select fkDisiplina,max(media) as maior_media,min(media) as menor_media from tbAssociativa group by fkDisiplina ; 
-- exibir a maior e menor media agrupado por aluno
select fkAluno,max(media) as maior_media,min(media) as menor_media from tbAssociativa group by fkAluno; 
-- exibir apenas as medias da tabela aluno Disiplina 
select 	round(avg(media),2) as media , round(avg(faltas),2) as faltas from tbAssociativa;
-- Exibir a  Quantidade de medias da tabela  ALunodisiplina
select round(count(media),2) as quantidade_de_medias from tbAssociativa;


