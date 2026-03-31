create database escola2;
use escola2;

create table diciplina(
cod_diciplina int primary key auto_increment,
nome_diciplina varchar(100) not null,
carga_horaria int not null

 );
 
 create table aluno(
 cod_aluno int primary key,
 nome_aluno varchar(100) not null,
 email_aluno varchar(100) not null unique,
 fk_cod_diciplina int not null,
 foreign key (fk_cod_diciplina) references diciplina (cod_diciplina)
 on delete cascade on update cascade
 );
 
insert into diciplina (cod_diciplina, nome_diciplina, carga_horaria) values
(1,'banco de dados II', 120),
(2,'matematica', 180);

insert into aluno (cod_aluno, nome_aluno, email_aluno, fk_cod_diciplina) values
(1010, 'enzo', 'progames@gmail.com',1),
(1020, 'vini', '123@gmail.com',2);

delete from diciplina where cod_diciplina = 1;
update diciplina set cod_diciplina=5, carga_horaria=120 where cod_diciplina=2;