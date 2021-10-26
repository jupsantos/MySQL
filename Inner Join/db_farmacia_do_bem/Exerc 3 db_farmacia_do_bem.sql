create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id_categoria bigint auto_increment,
    categoria varchar(255),
    tipo varchar(100),
    primary key(id_categoria)
);

insert into tb_categoria(categoria, tipo) 
			values  ("Higiene", "Sabonete"),
					("Higiene", "Shampoo"),
                    ("Beleza", "Maquiagem"),
                    ("Perfumaria", "Protetor Solar"),
                    ("Medicamento", "Antialergico");


create table tb_produto(
	id_produto bigint auto_increment,
    nome varchar(200) not null, 
    unidade varchar(100) not null,
    quantidade real not null,
    valor decimal(6,2),
    fk_id_categoria bigint,
    primary key(id_produto),
    foreign key(fk_id_categoria) references tb_categoria(id_categoria)
);

insert into tb_produto(nome, unidade, quantidade, valor, fk_id_categoria)
			values  ("Sabonete anti-acne em barra", "Unidade", 1, 3.50, 1),
					("Shampoo anti-caspa", "Unidade", 1, 13.50, 2),
                    ("Rímel a prova d'água", "Unidade", 1, 30.50, 3),
                    ("Protetor fator 30", "Unidade", 2, 93.50, 4),
                    ("Anti-alergico hystamin", "Caixa 30", 1, 25.50, 5);
                    
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valor > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor >= 3 and valor <= 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "%B%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica
select * from tb_produto inner join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id_categoria
		where tb_categoria.categoria = "Higiene";

