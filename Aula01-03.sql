-- Isso é um comentário
-- Criação do banco de dados aluno
create database aluno; -- aluno é o nome do banco de dados
-- Selecionar o banco de dados aluno
use aluno;
-- Criação da tabela Aluno
create table Aluno (
  ra int primary key,  -- ra é a chave primária desta tabela
  nome varchar(40),
  bairro varchar(40)
);
-- Exibir a tabela Aluno
select * from Aluno;
-- * significa todas as colunas
-- no lugar do *, vc pode colocar os nomes das colunas que vc quer exibir
-- seleciona apenas a coluna ra 
select ra from Aluno;
select ra, nome, bairro from Aluno;  -- equivale a select * from Aluno;
-- seleciona as colunas nome e ra, nessa ordem
select nome, ra from Aluno;

-- Inserção de dados de um aluno na tabela
-- valor de campo int é inserido sem aspas
-- valor de campo varchar ou char é inserido com aspas simples
insert into Aluno values (02211016, 'Fernando Martins','Taboão');
-- Exibir os dados da tabela
select * from Aluno; 

-- Inserção de dados de mais alunos
insert into Aluno values (02211041, 'Leo Nunes', 'Ferraz de Vasconcelos'),
                         (02211042, 'Lucas Henrique Adelino', 'Ponte Grande'),
                         (02211044, 'Lucas Mesquita', 'Jardim São Luis'),
                         (02211057, 'Roberta Pires', 'Oswaldo Cruz'),
                         (02211022, 'Gabriel Sanchez', 'Scarpelli');
                         
-- Exibir os dados dos alunos que são do bairro 'Taboão'
select * from Aluno where bairro = 'Taboão';

-- Aqui começa a aula do dia 23/fevereiro
insert into Aluno values (02211054, 'Rafael Gomes', 'Jardim São José');

-- Exibir todos os alunos
select * from Aluno;

-- Exibir a estrutura da tabela (ou descrição da tabela)
desc Aluno;
describe Aluno;      -- esses 2 comandos são iguais

-- Exibir os alunos cujo RA estejam entre um valor e outro
-- Os 2 comandos abaixo são equivalentes
select * from Aluno where ra between 02211040 and 02211050;
select * from Aluno where ra >= 02211040 and ra <= 02211050;

-- Exibir os alunos cujo RA seja maior do que um valor
select * from Aluno where ra > 02211050;

-- Exibir os alunos cujo RA seja diferente de um determinado valor
select * from Aluno where ra <> 02211022;    -- <> é o padrão SQL
select * from Aluno where ra != 02211022;    -- != é implementado por muitos SGBDs
											 -- mas não é o padrão

-- Exibir os dados da tabela ordenados pelo nome do aluno
-- Se não especificar asc nem desc, assume asc. Ou seja, assume ordem ascendente
select * from Aluno order by nome;
select * from Aluno order by nome asc;

-- Exibir os dados da tabela em ordem decrescente pelo nome (do Z para o A)
select * from Aluno order by nome desc;

-- Exibir os dados da tabela em ordem crescente pelo bairro
select * from Aluno order by bairro;

-- Exibir os dados da tabela em ordem decrescente pelo bairro
select * from Aluno order by bairro desc;
 
-- Exibir os dados dos alunos cujo nome comece com a letra 'L'
-- % significa zero ou mais caracteres, podendo ser qualquer caracter
select * from Aluno where nome like 'L%'; 

-- Exibir os dados dos alunos cujo nome comece com 'Lucas'
select * from Aluno where nome like 'Lucas%';

-- Exibir os dados dos alunos cujo RA termine com 4 
select * from Aluno where ra like '%4';

-- Exibir os dados dos alunos cujo nome contenha a palavra 'Henrique'
select * from Aluno where nome like '%Henrique%'; 

select * from Aluno;

-- Exibir os dados dos alunos cujo bairro comece com a letra 'J'
select * from Aluno where bairro like 'J%';

-- Exibir os dados dos alunos cujo nome termine com a letra 's'
select * from Aluno where nome like '%s';

-- Exibir os dados dos alunos cujo nome tenha a letra 'e' como 2a letra
-- O caractere _ significa apenas um caractere, podendo ser qualquer um
select * from Aluno where nome like '_e%';

-- Exibir os dados dos alunos cujo bairro tenha a letra 'a' como 2a letra
select * from Aluno where bairro like '_a%';

-- Exibir os dados dos alunos cujo nome tenha a letra 'b' como 3a letra
select * from Aluno where nome like '__b%';

-- Exibir os dados dos alunos cujo nome tenha a letra 'e' como penúltima letra
select * from Aluno where nome like '%e_';

-- Exibir os dados dos alunos cujo 1o nome tenha a letra 'e' como penúltima letra
select * from Aluno where nome like '%e_ %';

-- Exibir os dados dos alunos cujo sobrenome termine com a letra 's' ou com a letra 'z'
select * from Aluno where nome like '%s' or nome like '%z';

-- Exibir os dados dos alunos cujo bairro seja 'Scarpelli'
-- Quando o nome é exatamente o que vc está procurando, é melhor usar o = ao invés do like
-- O like é melhor para qdo está procurando por um padrão (usando % ou _)
select * from Aluno where bairro = 'Scarpelli';

-- Exibir os dados dos alunos cujo 1o nome termine com 'l' e o sobrenome termine com 'z'
-- Os 3 comandos abaixo são equivalentes
select * from Aluno where nome like '%l %' and nome like '%z';
select * from Aluno where nome like '%l %z';

-- Exibir os dados dos alunos cujo RA seja 2211022 ou 2211054 ou 2211042
-- Os 2 comandos abaixo são equivalentes
select * from Aluno where ra in (2211022, 2211054, 2211042);
select * from Aluno where ra = 2211022 or ra = 2211054 or ra = 2211042;

-- Exibir os dados dos alunos cujo RA seja diferente de 2211022 e 2211054 e 2211042
-- os 2 comandos abaixo são equivalentes
select * from Aluno where ra not in (2211022, 2211054, 2211042);
select * from Aluno where ra <> 2211022 and ra <> 2211054 and ra <> 2211042;

select * from Aluno;

-- Alterar o bairro do aluno de RA 2211016 para 'Vila Santa Luzia'
-- Muita atenção aqui: se não colocar where, vai atualizar para a tabela inteira
-- O MySQL Server tem uma proteção para não deixar isso acontecer, mas essa proteção
-- pode ser desativada e outros SGBDs não tem essa proteção
update Aluno set bairro = 'Vila Santa Luzia' where ra = 2211016;

-- Alterar o bairro e o nome do aluno de ra = 2211054
update Aluno set nome = 'Rafael Faria Gomes', bairro = 'Olímpico'
             where ra = 2211054;
             
-- Excluir o aluno de ra = 2211044
-- ATENÇÂO aqui tb: sem o where, exclui todas as linhas da tabela
-- MySQL Server tem uma proteção para não deixar isso acontecer, mas essa proteção 
-- pode ser desativada e outros SGBDs não tem essa proteção
delete from Aluno where ra = 2211044;

select * from Aluno;

-- Excluir a tabela
drop table Aluno;  

-- Excluir o banco de dados (schema) aluno
drop database aluno;           

