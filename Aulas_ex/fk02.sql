Use Aluno;
create table Curso(
	idCurso int primary key auto_increment,
    nome char(5),
    coordenador varchar(15)
) auto_increment = 100;
insert into Curso values (null,'ADS','Gerson'),
						 (null,'CCO','Marise'),
                         (null,'Redes','Alex');
Alter table Aluno add fkCurso int;
select * from Aluno;
-- acrescentar a restrição de fk a coluna fk curso da tabeça aluno
-- ou seja vamos configurar a coluna fkCurso para ser um FK
alter table Aluno add foreign key(fkCurso) references Curso(idCurso);

-- Preencher os dados de fkcurso par aos registros que já existem
update Aluno set fkCurso = 100 where ra < 2211040;
select * from Aluno;
update Aluno set fkcurso= 101 where ra < 2211047;
update Aluno set fkcurso=102 where ra > 2211047;
-- Exibir os dados dos alunos e dos cursos correspondentes
 select  * from Aluno, Curso where fkcurso = idCurso ;
 -- Exibir os dados dos alunos e dos cursos correspondentes somente CCO
  select  * from Aluno, Curso where fkcurso = idCurso  and Curso.nome = 'CCO';
  -- Exibir os dados dos alunos e dos cursos correspondentes sem repetir o fk
  select ra,Aluno.nome,bairro,Curso.* from Aluno,Curso where fkcurso = idCurso;
  insert into Aluno values (2211099,'Mickey','Disney',102);
  select  * from Aluno, Curso where fkcurso = idCurso