create database rh_bd;
use rh_bd;


create table cargos(
    id_cargo int primary key auto_increment,
    nome_cargo varchar(100) not null
);

create table funcionario(
    id int primary key auto_increment, 
    cpf varchar(11) unique not null,
    nome varchar(100) not null,
    telefone varchar(15),
    salario decimal(10,2) not null,
    fk_id_cargo int not null,
    foreign key (fk_id_cargo) references cargos(id_cargo)
);

create table departamento(
    id_departamento int primary key auto_increment,
    nome_departamento varchar(100) not null,
    fk_id_cargo int not null,
    foreign key (fk_id_cargo) references cargos(id_cargo)
);

create table pontos(
    id_ponto int primary key auto_increment,
    fk_id int not null,
    foreign key (fk_id) references funcionario(id)
);

create table beneficios(
    id_beneficio int primary key auto_increment,
    fk_id int not null,
    foreign key (fk_id) references funcionario(id)
);