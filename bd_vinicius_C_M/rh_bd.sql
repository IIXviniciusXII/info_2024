create database rh_bd; #cria o banco de dados
use rh_bd;

create table funcionario(
id int not null primary key auto_increment, 
cpf varchar(11) unique  not null,
nome varchar(100) not null,
telefone int unique,
salario float not null,
fk_id_cargo int not null,
foreign key (fk_id_cargo) references cargos(id_cargo)
);

create table departamento(
nome_departamento varchar(100) not null,
fk_cargo varchar(100) not null,
foreign key (fk_cargo) references cargos(nome_cargo)

);

create table salario(
fk_salario float not null,
foreign key (fk_salario) references funcionario(salario)

);
create table cargos(
id_cargo int unique primary key auto_increment,
nome_cargo varchar(100) not null

);
create table pontos(
fk_id int not null,
foreign key (fk_id) references funcionario(id)
);
create table beneficios(
fk_id int not null,
foreign key (fk_id) references funcionario(id)
);