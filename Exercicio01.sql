create database atleta;
use atleta;
create table Atleta (
id_atleta int primary key  NOT NULL,
nome varchar(40),
modalidade varchar(40),
qnt_medalhas int
);
-- INSERINDO DADOS
insert into Atleta values (1,'Michael Phelps','Natação',28);
insert into Atleta values (2,'Edoardo Mangiarotti','Esgrima' ,13);
insert into Atleta values (3,'Valentina Vezzali','Esgrima' ,9);
insert into Atleta values (4,'Nedo Nadi','Esgrima' ,6);
insert into Atleta values (5,'Van Dyken','Natação' ,6);
insert into Atleta values (6,'Ryan Lochte','Natação' ,11);
-- exibir todos os dados da tabela
select * from Atleta;
-- exibir nome e qnt de medalhas da tabela
select nome,qnt_medalhas from Atleta;
-- exibir modalidade e  nome dos atletas nessa ordem
select modalidade,nome from Atleta;
-- exibir os dados dos atletas que tenham  3 medalhas ou mais
select nome from Atleta where qnt_medalhas > 2;
-- exibir os dados dos atletas que tenham id_atleta menor doq determinado valor
select * from Atleta where  id_atleta <= 6;
-- exibir nome dos atletas de uma determinada modalidade
select * from Atleta where modalidade = 'Natação';
-- exibir nome dos atletas onde idatleta esteja entre 3 e 7
select * from Atleta where id_atleta  between  3 and 7;
-- Exibir os dados dos atletas q forem diferente de um valor
select * from Atleta where id_atleta <> 3;
-- Exibir os dados dos atletas por modalidade em ordenados
select * from Atleta order by modalidade asc;
-- Exibir quantidade de  medalhas em ordem descrescente
select * from Atleta order by qnt_medalhas desc;
-- Exibir os dados da tabela cujo nome comece com uma determinada letra
select * from Atleta where nome like 'V%';
-- Exibir os dados da tabela cujo nome termine  com uma determinada letra
select * from Atleta where nome like '%i';
-- Exibir os dados da tabela cujo nome tenha uma determinada letra como penultima letra
select * from Atleta where nome like '%l_';
-- alterar informação da tabela
update Atleta  set qnt_medalhas = 5 where id_atleta = 3;
update Atleta  set qnt_medalhas = 5 ,nome = 'Leo PEGA'where id_atleta = 3;
-- excluir um atleta
delete from Atleta  where id_atleta = 3;
-- excluir tabela
drop table musica;
-- excluir database atleta
drop database atleta;










