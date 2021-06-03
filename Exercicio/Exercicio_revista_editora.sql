create database Revista;
use Revista;
create table revistas(
	Id_revista int primary key auto_increment,
	nome varchar(40),
    categoria varchar(40),
    preco decimal (6,2)
);
insert into revistas (id_revista,nome,preco) values (null,'Época',10.90),
													(null,'Globo',12.00),
													(null,'Veja',8.70),
                                                    (null,'Rothbard',15.00);
select * from revistas;
update   revistas set categoria ='jornalistica' where Id_revista between 0 and 3;
update revistas set categoria='Informativa' where Id_revista = 03;
update revistas set categoria='Politica' where Id_revista = 04;
insert into revistas values (null,'Science Direct','Cientifica',8.90),
							(null,'Nature','Cientifica',10.90),
                            (null,'Science Magazine,','Cientifica',11.00),
                            (null,'Le Journal des Sçavans','Cientifica',15.00);
select * from revistas;                           
desc revistas;
alter table revistas modify  categoria varchar(30);
desc revistas;
alter table revistas modify categoria varchar(40);
-- renomear o nome da coluna para nome coluna
alter table revistas change  nome nome_revista varchar(40) ;
-- ------------------------------
select * from revistas;

 alter table revistas add  peridiocidade varchar(15);
 insert into revistas values (null,'Science Direct','Cientifica',8.90,'20');
 update revistas set peridiocidade = 7 where id_revista < 4;
 update revistas set peridiocidade = 15 where id_revista in (4,9);
 update revistas set peridiocidade = 30 where id_revista > 4 and id_revista < 9;
 update revistas set categoria = 'Economia' where id_revista = 4;
 alter table revistas drop peridiocidade;
 
 create table editora(
 idEditora int primary key auto_increment,
 nomeEditora varchar(40),
 Data_fundacao date
 
 
 ) auto_increment = 1000;
 insert into editora values(null,'Globo','1955-02-03'),
						   (null,'Abril','1970-07-23'),
                           (null,'Editora libertaria','1991-09-03'),
                           (null,'Editora cientifica','1955-04-18');
select * from editora;
update editora set Data_fundacao ='1991-11-08' where idEditora=1003;



select * from editora;
select * from revistas;
desc revistas;
-- COLOCAR NOS EXERCICIOS

 alter table revistas  add fkEditora int,add foreign key(fkEDitora) references editora(idEditora);
 update revistas set fkEditora = 1000 where id_revista < 4;
 update revistas set fkEditora = 1001 where id_revista = 3;
 update revistas set fkEditora = 1002 where id_revista in (4,9);
 update revistas set fkEditora = 1003 where id_revista between 5 and 8;
 select * from revistas;
 select * from revistas,editora where fkEditora = idEditora;
 select * from revistas,editora where idEditora = 1002 and fkEditora=1002;
 
 
 drop database Revista;
                            
                            
	