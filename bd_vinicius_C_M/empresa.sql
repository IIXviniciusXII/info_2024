create database Empresa_bd;
use  Empresa_bd;

create table funcionario(
nome varchar(100) not null,
data_nacimento date not null,
cpf varchar(11) primary key not null unique,
rg int unique not null,
salario float not null
);

insert into funcionario(nome,data_nacimento, cpf, rg, salario) values
('João Silva', '1990-05-15', 12345678901, 1234567, 3500.50),
('Maria Souza', '1985-10-20', 98765432100, 7654321, 4200.00),
('Carlos Pereira', '1992-03-08', 45678912300, 1122334, 2800.75),
('Ana Costa', '1993-07-12', 11122233344, 2233445, 3100.00),
('Bruno Almeida', '1988-01-30', 22233344455, 3344556, 3900.25),
('Carla Mendes', '1995-09-18', 33344455566, 4455667, 2750.80),
('Diego Rocha', '1982-11-05', 44455566677, 5566778, 5000.00),
('Maria Lima', '1998-04-22', 55566677788, 6677889, 2600.40),
('Felipe Santos', '1991-12-10', 66677788899, 7788990, 3400.90),
('Gabriela Ferreira', '1987-06-03', 77788899900, 8899001, 4100.60);

select*from funcionario;
select nome, data_nacimento from funcionario;
select nome, salario from funcionario;
select distinct nome from funcionario;
select nome, salario*0.20 from funcionario;
select nome, salario*10 from funcionario;
select nome, salario from funcionario where salario = 4200


