drop database projetoacademia;
create database projetoacademia;
use projetoacademia;
create table Cliente(
ID_Cliente int primary key auto_increment,
Nome varchar(70) not null, 
CPF varchar(20) unique not null,
RG varchar(20),
Endereco varchar(255),
Cartao_de_credito varchar(50) not null,
Telefone varchar(25) not null,
Academia boolean not null
);
create table Professores(
ID_Professor int primary key auto_increment,
CPF varchar(20) unique not null,
Nome varchar(70) not null,
RG varchar(20),
Endereco varchar(255),#criar entidade propria
Conta_bancaria varchar(50)
);
create table Aulas(
ID_Aula int primary key auto_increment,
Modalidade varchar(20) not null,
Academia varchar(50),
Capacidade int
);
create table Agenda(
ID_Cliente int,
ID_Aula int,
ID_Agenda int primary key auto_increment,
ID_Professor int,
constraint fk_cliente foreign key (ID_Cliente) references Cliente(ID_Cliente),
constraint fk_aula foreign key (ID_Aula) references Aulas(ID_Aula),
Modalidade varchar(20) not null,
Data date not null,
Hora timestamp,
Local varchar(20),
constraint fk_professor foreign key (ID_Professor) references Professores(ID_Professor)
);