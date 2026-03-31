create database consultorio_bd;
use consultorio_bd;

create table paciente(
id_paciente int primary key auto_increment,
nome_paciente varchar(100) not null,
cpf varchar(11) not null unique,
data_nacimento float not null,
email varchar(200) not null unique,
telefone float
);
create table medico(
id_medico  int primary key auto_increment,
nome_medico varchar(100) not null,
crm int not null unique,
especialidade varchar(100) default("clinico geral"),
salario int not null check(salario>0)
);
create table consulta(
id_consulta int primary key auto_increment,
data_consulta float not null,
horario varchar(8) not null,
valor int not null,
fk_id_medico int not null,
fk_id_paciente int not null,
situacao varchar(20) default('Agendada'),
foreign key  (fk_id_medico) references medico(id_medico),
foreign key (fk_id_paciente) references paciente(id_paciente)
on delete cascade on update cascade

);

alter table paciente add tipo_sanguineo varchar(2) not null;

alter table consulta rename to  atendimento;
show tables;
describe table atendimento;
insert into medico (nome_medico,crm,especialidade,salario) values
("Carlos Silva", 12345, "Cardiologia", 15000),
("Ana Souza", 23456, "Pediatria", 12000),
("Marcos Oliveira", 34567, "Ortopedia", 14000),
("Juliana Lima", 45678, "Dermatologia", 13000),
("Roberto Alves", 56789, "Neurologia", 16000);

insert into  paciente(nome_paciente,cpf,data_nacimento,email,telefone, tipo_sanguineo) values
("João Silva", "12345678901", 2000-05-10, "joao@gmail.com", "45999990001","+A"),
("Jorge Santos", "23456789012", 1998-08-22, "jorge@gmail.com", "45999990002", "-A"),
("Cláudio Souza", "34567890123", 2001-01-15, "claudio@gmail.com", "45999990003","-O"),
("Mariana Lima", "45678901234", 1999-12-03, "mariana@gmail.com", "45999990004","-B"),
("Pedro Alves", "56789012345", 2002-07-18, "pedro@gmail.com", "45999990005","+B");

insert into  atendimento (data_consulta,horario,valor,fk_id_medico,fk_id_paciente,situacao) values
(2026-03-20, "08:30:00", 200, 1, 1, "Agendada"),
(2026-03-21, "10:00:00", 150, 2, 2,"concluida"),
(2026-03-22, "14:15:00", 300, 3, 3, "Agendada"),
(2026-03-23, "09:45:00", 180, 4, 4,"em andamento"),
(2026-03-24, "16:00:00", 250, 5, 5, "Agendada");

update paciente set nome_paciente='Julia Lima' where id_paciente=4;
update paciente set telefone='45999990002' where id_paciente=1;
delete from atendimento  where fk_id_paciente=3;
delete from atendimento  where situacao="Agendada";
drop database consultorio_bd;


