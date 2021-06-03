create database musica;
create table musica (
   idMusica int primary key not null,
   titulo varchar (40),
   artista varchar(40),
   Genero  varchar(40)
	
  
  );

insert  into musica values (1,'Antes','Matue','Trap');
insert  into musica values (2,'É sal','Matue','Trap');
insert  into musica values (3,'Máquina do tempo','Matue','Trap');
insert  into musica values (4,'Vermillion pt.1','Slipknot','Nu Metal');
insert  into musica values (5,'Vermillion pt.2','Slipknot','Nu Metal');
insert  into musica values (6,'Duality','Slipknot','Nu Metal');
insert  into musica values (7,'The devil in I','Slipknot','Nu Metal');
-- exibir tudo de musica
select * from musica;
-- exibir  n musica e artista
select titulo,artista from musica;
-- exibir genero e artista
select genero,artista from musica;
-- exibir dados de um determinado genero
select * from musica where genero = 'trap';
select titulo from musica where artista = 'Slipknot';
select * from musica where idMusica between 2 and 5;
select * from musica where idMusica <= 3;
select * from musica where idMusica >= 3;






  
  