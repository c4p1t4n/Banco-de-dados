create database alunos;
use alunos;

create table empresas(
	idEmpresa int primary key auto_increment,
	nome_empresa varchar(40),
	representante varchar(40)
)auto_increment=101;
create table instituicao(
	idInstituicao int primary key auto_increment,
	nomeInstituicao varchar(40),
	origem varchar(40)


)auto_increment=1000;
create table aluno(
	ra int primary key,
	nome varchar(40),
	fkInstituicao int,
	fkEmpresaInteresse int,
foreign key (fkInstituicao) references instituicao(idInstituicao),
foreign key (fkEmpresaInteresse) references empresas(idEmpresa)
);
insert  into empresas values (null,'C6','Alexandre Bigolone'),
							 (null,'Safra','Jose safra'),
                             (null,'Alpe','Suelen Assaiante'),
                             (null,'Fleury','Rainer steuder');
insert into instituicao values(null,'ETEC jorge street','Sao caetano'),
							   (null,'ETEC guaianazes','Guianazes'),
                               (null,'ETEC albert eisten','Tatuape');
                               
select * from empresas,instituicao;

insert into  aluno values(02211041, 'Leo Nunes', 1002,101),
                         (02211042, 'Lucas Henrique Adelino', 1000,102),
                         (02211044, 'Lucas Mesquita', 1001,103),
                         (02211057, 'Roberta Pires', 1003,102),
                         (02211022, 'Gabriel Sanchez', 1001,104);
select * from aluno,instituicao where idInstituicao = fkInstituicao;
select * from aluno,empresas where idEmpresa = fkEmpresaInteresse;
select * from aluno,empresas,instituicao where idEmpresa = fkEmpresaInteresse and idInstituicao = fkInstituicao;
