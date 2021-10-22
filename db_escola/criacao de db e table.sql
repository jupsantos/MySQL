create database db_escola;

use db_escola;

create table tb_aluno(
	id_aluno bigint auto_increment,
    nome varchar(255) not null,
    nasc_data date,
    turma varchar(20),
    curso varchar(30), 
    nota real,
    primary key(id_aluno)
);


                   





