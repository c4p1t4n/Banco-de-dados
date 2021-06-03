Create database filme;
use filme;
create table Filme(
	idFilme int primary key,
    titulo varchar(50),
    genero varchar(40),
    diretor varchar (40)
);
-- inserção de todos os dados na tabela
insert into Filme values (1,'Velozes e furiosos','Ação','Rob cohen');
-- isernção de  dados especificos da tabela
insert into Filme (idFilme,titulo) values 	(2,'Madagascar'),
											(3, 'Kong vs Godzilla'),
											(4,'Shrek');
select * from Filme;
-- para  colocar os dados nos campos nulos deve-se usar o update
update Filme set genero = 'animação', diretor = 'Tom Mcgrary' where idFilme in (2,4);
update Filme set  genero = 'ação',diretor = 'Adam Wingard' where idFilme = 3; 

-- criação de uma nova tabela
create table  Pessoa (
	idPessoa int  primary key auto_increment,
    nome varchar (40),
    dataNascimento date
    );	
select * from Pessoa;
desc Pessoa;
insert into Pessoa values (null,'Maria Silva','2002-09-24'),
						  (null,'José Souza','2001-10-05');
-- inserindo dados sem precisar colocar null para auto-incremento
insert into Pessoa (nome, dataNascimento) values  ('Ana Teixeira', '2000-07-09'), 
												  ('Paulo Fontana', '2002-06-08');
-- inserir uma nova tabela
alter table Pessoa add column sexo char(1);

-- excluir coluna tabela 
alter table Pessoa drop column sexo ;