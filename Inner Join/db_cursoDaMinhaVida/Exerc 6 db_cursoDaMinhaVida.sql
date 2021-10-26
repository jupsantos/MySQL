create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
	id_categoria bigint auto_increment,
	curso varchar(100) not null,
    categoria varchar(100),
    primary key(id_categoria)
);

insert into tb_categoria(curso, categoria)
		values	("Java Web", "Back-End"),
				("C#", "Back-End"),
				("Segurança", "Segurança"),
				("Python", "Back-End"),
                ("React", "Front-End"),
                ("HTML", "Front-End");
                

create table tb_produto(
	id_produto bigint auto_increment primary key,
    nome varchar(100),
    vagas int(100),
    duracao varchar(30),
	nivel varchar(30),
    valor decimal(10,2),
    fk_id_categoria bigint,
    foreign key(fk_id_categoria) references tb_categoria(id_categoria)
);

insert into tb_produto(nome, vagas, duracao, nivel, valor, fk_id_categoria)
			values 	("Desenvolvimento Java", 30, "3 meses", "Intermediário", 127.90, 1),
					("Segurança " , 120, "2 meses", "Iniciante", 300.99 , 3),
					("Desenvolvimento orientado a objeto " , 20 , "1 mes", "Iniciante", 405.90, 1),
					("Front-End com React" , 30, "5 meses", "Avançado", 690.78, 5),
					("HTML Front-End" , 27, "7 meses", " Avançado", 784.9, 6),
					("Python" , 20, "3 meses", "Iniciante" , 509.89, 4);


-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valor > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor >=3 and valor <= 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra J.
select * from tb_produto where nome like "%J%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica
select * from tb_produto inner join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id_categoria
			where tb_categoria.categoria = "Back-End";