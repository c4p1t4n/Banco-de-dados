create database gastos;
create table pessoas(
id_pessoa int primary key auto_increment,
nome varchar(40),
nascimento date,
profissao varchar(30),
idiomas varchar(40)

);
create table gastos(
id_gasto int primary key auto_increment,
data_gasto date,
valor int,
descricao varchar(100)
)auto_increment=100;
