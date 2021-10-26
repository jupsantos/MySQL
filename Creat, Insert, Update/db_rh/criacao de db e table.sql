create database db_rh;

use db_rh;

create table tb_funcionario(
	id_funcionario bigint auto_increment,
    nome varchar(255),
    documento varchar(20),
    nascimento_data date,
    registro_data date,
    primary key(id_funcionario)
);

alter table tb_funcionario add cargo varchar(30);

alter table tb_funcionario modify salario decimal(8,2); -- decimal está passando que pode armazenar até 1 milhao com precisao de centavos 10000000,00





                