create database biblioteca_bd;
use biblioteca_bd;
create table autores(
id_autor int auto_increment unique,
nome_autor varchar(40) not null ,
nacionalidade varchar(40) not null,
primary key (id_autor)

);
create table livros(
id_livro int  primary key auto_increment,
titulo varchar(1000) not null,
fk_autor int not null,
ano_publicacao int,
constraint chk_ano_publicacao check (1599<ano_publicacao),
foreign key (fk_autor) references autores(id_autor)
on delete cascade on update cascade
);
create table alunos(
id_aluno int primary key auto_increment unique,
nome_aluno varchar(40) not null,
cpf_aluno int unique not null
);
create table emprestimo(
id_emprestimo int primary key auto_increment,
fk_id_livro int not null,
fk_id_aluno int not null,
data_emprestimo  float not null ,
data_devolucao float null,
foreign key (fk_id_livro) references livros(id_livro),
foreign key (fk_id_aluno) references alunos(id_aluno)
on delete cascade on update cascade
);
alter table livros add genero varchar(30) not null;
alter table autores rename column nacionalidade to pais_origem ;
alter table emprestimo  add situacao varchar(15) default('emprestado') not null;
describe table autores;
describe table livros;
describe table alunos;
describe table emprestimo;
show databases;
show tables;

insert into autores (nome_autor, pais_origem) values
("Jorge I", "Brasil"),
("Jorge II","Alemanha"),
("Jorge III","Russia"),
("Jorge IV","Portugal"),
("Jorge V","Argentina");
insert into livros( titulo,fk_autor, genero,ano_publicacao) values
("As longas tranças de um rei careca", 1, 'terror', 1790),
("A volta dos que não foram", 3, 'misterio', 1890),
("A historia dos dois pombos voadores que sonham em ser melhor do que um pombo na mão", 5,'aventura', 2026),
( "Os  três mosquitos", 2,'açao', 1970),
( "Tempestade em copo da agua", 4, 'suspense', 1987);
insert into alunos(nome_aluno, cpf_aluno) values
("daniel", 12345),
("willian", 42351),
("davidy", 46796),
("erik", 54321),
("arthur", 12445);
insert into emprestimo( fk_id_livro, fk_id_aluno, data_emprestimo, data_devolucao) values
(2, 1,2025-03-01, 2025-03-10),
(1, 4,2025-03-02, 2025-03-12),
(3, 3,2025-03-03, 2025-03-13),
(5, 2,2025-03-04, 2025-03-14),
(4, 5,2025-03-05, 2025-03-15);

update autores set nome_autor='willian shakespear' where id_autor=4;
delete  from alunos  where id_aluno=2;
delete  from emprestimo  where id_emprestimo=2;