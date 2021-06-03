create database clienteLojas;
use clienteLojas;
create table tbLojas(
idLoja int primary key auto_increment,
nomeLoja varchar (40),
endereco varchar(40),
telefone varchar(40),
email varchar (50),
fkLojaPrincipal int,
foreign key(fkLojaPrincipal) references tbLojas(idLoja)
);
drop database clienteLojas;
create table tbClientes(
idCliente int primary key auto_increment,
nomeCliente varchar(40) not null,
idade int not null check (idade>17),
endereco varchar(150) not null,
telefoneUm varchar (14) not null,
telefoneDois varchar(14),
genero char (1)  check (genero ='M' or genero = 'F'or genero='N'),
fkLoja int,foreign key (fkLoja) references tbLojas(idLoja)
)auto_increment = 100;
insert into tbLojas values (null,'Ambev','Av. Itaquera, 2931 - Jardim Maringa-SP','11972110908','Ambev@ambev.com.br',null);
insert into tbLojas values (null,'Skol','Av. Jacu-Pêssego 3948A Colônia-SP','1125247864','Skol@ambev.com.br',1),
                           (null,'Brahma','Vila Maluf, Suzano - SP','11935782939','Brahma@ambev.com.br',1);
	
insert into tbClientes values (null, 'Pietro Renato de Paula',18,'Rua Guilherme Arthur Pommer,Jardim Vista Alegre-SP','1936287368','9988162119,','M',1),
		    				  (null, 'Thales Juan Farias',24,'Rua Antônio Frederico Ozanam,Vila Carolina-Itapetininga','15998335756',null,'M',1),
                              (null, 'Sara Beatriz Heloisa ',28,'Rua Ernesto Ziggiatti,Bairro das Palmeiras-Campinas','1938893105',null,'F',2),
                              (null , 'Benedita Luana Betina ',47,'Travessa Carbone 404,Capão do Embira-SP','11982024433','1135456535','F',2),
                              (null,'Yuri Davi Felipe Nogueira',23,'Rua Antônio Parran ,Jardim Santa Lucrécia-SP','11981812888',NULL,'M',3),
                              (null,'Yago Severino Pedro ',29,'Rua Chafariz de Pedra 964,Parque Boa Esperança-SP','11974392625',NULL,'M',3);
-- Exibir os dados da tabela separadamente
select * from tbClientes;         

select * from tbLojas;
-- exibir os dados da tabela de forma correspondente
select * from tbClientes,tbLojas where idLoja = fkLoja;
-- exibir os dados da tabela de forma correspondente com uma condição
select * from tbClientes,tbLojas where idLoja = fkLoja and idLoja = 2;
-- Exibir os dadaos de uma tabela utilizando uma das funções aprendidas (max ,sum,avg)
select avg(idade) as  'Media das idades' from tbClientes;
-- Exibir os dados  do relacionamento recursivo de forma correspondente
select * from tbLojas where   fkLojaPrincipal =1;
-- Exibir os dados  do relacionamento recursivo de forma correspondente com uma condição
select * from tbLojas where  fkLojaPrincipal=1 and  nomeLoja = 'Skol';
-- Exibir os dados das tabelas e  do relacionamento recursivo de forma correspondente
select * from tbClientes,tbLojas where  fkLojaPrincipal =1 and fkloja=idLoja ;
