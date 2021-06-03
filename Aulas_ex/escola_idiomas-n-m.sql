Create database EscolaIdiomas;

use EscolaIdiomas;

-- criação tabela aluno
create table Aluno(
ra int primary key auto_increment,
nome varchar(45),
bairro varchar (45)
)auto_increment =1000;
insert Aluno values(null,'Maria','Saúde'),(null,'Joao','Consolação');
-- Criação da tabela Curso
create table Curso(
idCurso int primary key auto_increment,
NomeCurso varchar(45),
Coordenador varchar(45)
);
insert Curso values(null,'INGLES','Juan'),(null,'Espanhol','BETH');
select * from Aluno;
create table tbAssociativa(
fkra int,
foreign key (fkra) references Aluno(ra),
fkCurso int,
foreign key (fkCurso) references Curso(idCurso),
dateInicio date,
primary key( fkra,fkCurso,dateInicio),
media decimal(4,2),
nivel char(2)
);

insert into tbAssociativa values (1000, 1, '2015-02-01', 9.0, 'A1'),
							  (1000, 2, '2017-02-01', 7.0, 'I3'), 
                              (1001, 1, '2020-02-01', 7.0, 'B1'), 	
                              (1001, 2, '2019-02-01', 8.5, 'I2');
                              
select * from Aluno,Curso,tbAssociativa where fkra = ra and fkCurso = idCurso;
select * from Aluno,Curso,tbAssociativa where fkra = ra and fkCurso = idCurso and Nomecurso='Espanhol';
-- Exibir soma das medias
select sum(media) as 'Soma das medias',round(avg(media),2) as 'Media das medias' from tbAssociativa;
-- Exibir a menor e maior media
select min(media) as  'Menor media', max(media) as 'Maior media' from tbAssociativa;
-- Exibir a menor e maior media agrupado por curso
select fkCurso,min(media) as  'Menor media', max(media) as 'Maior media' from tbAssociativa group by fkCurso;
-- Exibir a menor e maior media agrupado por Alubi
select fkra,min(media) 'Menor media' , max(media) as 'Maior media' from tbAssociativa group by fkra;
-- Mostra as frequencia dentro  de uma tabela
select distinct  media from tbAssociativa;
--  quantidade de medias distintas 
select count(media) from tbAssociativa;



