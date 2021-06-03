create database ex10;
use ex10;
drop database ex10;
create table departamento(
idDepto  int primary key,
nomeDepto varchar(30),
fkGerente int,
dataInicioGer date
);
insert into  departamento values(105,'Pesquisa',2,'2008-05-22'),
								(104,'Administração',7,'2015-01-01'),
                                (101,'Matriz',8,'2001-06-19');
create table funcionario(
idFunc int primary key,
nomeFunc varchar(30),
salario int,
sexo char (1),
fksupervisor int,
-- foreign key (fkSupervisor) references funcionario(idFunc),
datanascimento date,

fkDepto int,
foreign key (fkDepto) references departamento(idDepto)
);

insert into funcionario values (1,'Jõao Silva',3500,'m',2,'1985-01-09',105),
								(2,'Fernando Wong',4500,'m',8,'1975-12-08',105),
                                (3,'Alice Sousa',2500,'f',7,'1988-01-19',104),
                                (4,'Janice Morais',4300,'f',8,'1970-06-20',104),
                                (5,'Ronaldo Lima',3800,'m',1,'1982-09-15',105),
                                (6,'Joice Leite',2500,'f',1,'1992-07-31',105),
                                (7,'Antonio Pereira',2500,'m',4,'1989-03-29',104),
                                (8,'Juliano Brito',5500,'m',null,'1957-11-10',101);
create table projeto(
idProjeto int primary key,
nomeProj varchar(40),
localproj varchar(40),
fkDepto int,
foreign key (fkDepto) references departamento(idDepto)
);
insert into projeto values (1,'Projeto X','Santo André',105),
							(2,'Projeto Y','Itu',105),
							(3,'Projeto Z','São Paulo',105),
							(10,'Informatização','Mauá',104),
							(20,'Reorganização','São Paulo',101),
							(30,'Benefícios','Mauá',104);
create table FuncProj(
fkFunc int,
foreign key (fkFunc) references funcionario(idFunc),
fkProj int,
foreign key (fkProj) references projeto(idProjeto),
horas decimal(3,1),
primary key(fkFunc,fkProj)
);

insert into FuncProj values (1,1,32.5),
							(1,2,7.5),
							(5,3,40.0),
							(6,1,20.0),
							(6,2,20.0),
							(2,2,10.0),
							(2,3,10.0),
							(2,10,10.0),
                            (2,20,10.0),
                            (3,30,30.0),
                            (3,10,10.0),
                            (7,10,35.0),
                            (7,30,5.0),
                            (4,30,20.0),
                            (4,20,15.0),
                            (8,20,null);

-- Exibir os dados separadamente
select * from departamento;
select * from funcionario;
select * from projeto;
select * from FuncProj;

-- Inserir mais o seguinte dado na tabela funcionario (null,'Cecilia Ribeiro',2800,'f',4,'1980-04-05',104)
-- Conseguiu inserir ? porque ? Nao , pois como a tabela nao possui o auto_incremento o id nao
-- pode ser null
insert into funcionario values (null,'Cecilia Ribeiro',2800,'f',4,'1980-04-05',104);


-- Inserir mais o seguinte dado (3,'Alice Sousa',2800,'f',4,'1980-04-05',104)
-- Conseguir inserir ?Porque ? Não,porque o  idFuncionario esta duplicado
insert into funcionario values (3,'Alice Sousa',2800,'f',4,'1980-04-05',104);

-- Inserir mais o seguinte dado (9,'Cecilia Ribeiro',2800,'f',4,'1980-04-05',107);
-- Conseguir inserir ?Porque ? Não,porque o  nao existe a fkdepartamento 107
insert into funcionario values (9,'Cecilia Ribeiro',2800,'f',4,'1980-04-05',107);

-- Inserir mais o seguinte dado (9,'Cecilia Ribeiro',2800,'f',4,'1980-04-05',107);
-- Conseguir inserir ?Porque ?Sim , todos 
insert into funcionario values (9,'Cecilia Ribeiro',2800,'f',4,'1980-04-05',104);                          