create database musica;
use musica;
create table musica (
   idMusica int primary key ,
   titulo varchar (40),
   artista varchar(40),
   Genero  varchar(40)  
  );

insert  into musica values (1,'Antes','Matue','Trap'),
						   (2,'É sal','Matue','Trap'),
						   (3,'Máquina do tempo','Matue','Trap'),
						   (4,'Vermillion pt.1','Slipknot','Nu Metal'),
						   (5,'Vermillion pt.2','Slipknot','Nu Metal'),
						   (6,'Duality','Slipknot','Nu Metal'),
						   (7,'The devil in I','Slipknot','Nu Metal');
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
-- --------------------------------------------------
-- Colocar nos exercicios
create table album(
	idAlbum int primary key auto_increment,
	nome varchar(40),
	gravadora varchar(40)
) auto_increment=100;
insert into album values (null,'Máquina do tempo','30PRAUM'),
						 (null,'All hope is gone','Roadrunner Records');
alter table musica add fkAlbum int,add foreign key(fkAlbum) references album(idAlbum);
update  musica set fkAlbum=100 where idMusica < 4;
update musica set fkAlbum=101 where idMusica >3;
select * from musica;
select * from album;
delete  from album where idAlbum > 101;
select * from musica,album where fkAlbum = idAlbum;
select * from musica,album where   fkalbum=idAlbum and nome = 'All hope is gone';
select * from musica,album where   fkalbum=idAlbum and gravadora = '30PRAUM';





  
  