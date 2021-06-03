create database Revista;
create table revistas(
	Id_revista int primary key auto_increment,
	nome varchar(40),
    categoria varchar(40),
    preco decimal (6,2)
);
insert into revistas (id_revista,nome,preco) values (null,"Época",10.90),
													(null,"Globo",12.00),
													(null,"Veja",8.70)