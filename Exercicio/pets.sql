create database pets;
use pets;
create table usuarios(
id_usuario int primary key auto_increment,
nome varchar(40),
telefone char(11),
telefone_fixo varchar(20),
endereco varchar(40)
)auto_increment=1;

create table pets(
id_pet int primary key auto_increment,
nome_pet varchar (35),
raca varchar(45),
peso float,
animal char(1) check (animal= 'c' or animal ='g'),
fk_pets int,
 foreign key(fk_pets) references usuarios(id_usuario)
)auto_increment=101;
insert into usuarios (id_usuario,nome,telefone,telefone_fixo,endereco) value
											(null,'Bruno silva',1196358309,'(11)4002-8922','sao paulo, jardins'),
                                            (null,'Leo santos',11999999999,'(11)46754672','sao paulos, sao paulo'),
                                            (null,'Edoardo nina',11982959399,'(11)46732659','sao paulo,tatuape');
select * from usuarios;
insert into pets (id_pet,nome_pet,raca,peso,animal,fk_pets) values (null,'Nina','Pastor alemao',90.00,'c',1),
																	(null,'ROoT','Pastor belga',80.00,'c',1),
                                                                    (null,'stuart','Gato bengal',20.00,'g',3),
                                                                    (null, 'peludo','Sphynx',19.00,'g',2);
-- exibir todos os dados das tabelas criadas separadamente																				
select * from usuarios;
select * from pets;
-- alterar o tamanho da coluna cliente
alter table usuarios  modify column nome varchar(35);
-- exibir todos os dados de um determinado animal
select * from pets where animal='c'; 
-- exibir apenas os pesos e nome dos animias
select nome_pet,peso from pets;
-- exibir o nome dos animais ordenado
select * from pets order by nome_pet;
-- exibir os clientes em ordem descrecente pelo enderco
select * from usuarios order by endereco desc;
-- exibir os dados dos animais que comecam com certa letra
select * from pets where   nome_pet like 'p%';
-- alterar um telefone de um cliente
update usuarios set telefone =11983300006  where id_usuario =1;
select * from usuarios;
-- exibir pets e seus respectivos donos
select * from pets,usuarios where fk_pets=id_usuario;
-- exibir os pets de um determinado dono
select * from pets,usuarios where fk_pets=id_usuario and id_usuario=1;
-- exibir media e soma dos pesos dos animais
select avg(peso) as 'media do peso',sum(peso) as 'soma do peso' from pets ;
-- exibir peso minimo e maximo dos animais
select max(peso) as 'peso maximo',min(peso) as 'peso minimo' from pets ;
-- exibir peso minimo e maximo dos cachorros
select avg(peso) as 'media do peso',sum(peso) as 'soma do peso' from pets where animal='c';
-- deletar um dado
delete from pets where id_pets=103;
-- exibir maximo e minimo pesos dos cachorros
select min(peso) as 'minimo peso',max(peso) as 'maximo peso' from pets where animal='c';
drop table usuarios;
drop table pets;
