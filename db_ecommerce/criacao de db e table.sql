create database db_ecommerce;

use db_ecommerce;

create table tb_produto(
	id_produto bigint auto_increment,
    marca varchar(30),
    modelo varchar(30) not null,
    cor varchar(20),
    preco decimal(4,2),
    especificacao varchar(100),
    primary key(id_produto)
);

alter table tb_produto modify preco decimal(8,2);
alter table tb_produto modify especificacao varchar(255);



