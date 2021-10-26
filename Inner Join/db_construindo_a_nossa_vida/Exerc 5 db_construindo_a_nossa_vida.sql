create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
    id_categoria bigint auto_increment,
    nome varchar(30) not null,
    tipo varchar(255),
    primary key(id_categoria)
);

insert into tb_categoria(nome, tipo)
	values  ("Chuveiro", "Hidráulico"),
			("Torneira", "Hidráulico"),
            ("Lâmpada", "Iluminação");

create table tb_produto(
    id_produto bigint auto_increment,
    nome varchar(255) not null,
    preco real,
    garantia varchar(30),
    fk_id_categoria bigint,
    primary key(id_produto),
    foreign key(fk_id_categoria) references tb_categoria(id_categoria)
);

insert into tb_produto(nome, preco, garantia, fk_id_categoria)
	values  ("Chuveiro Turbo Lorenzetti", 359.90 , "3 meses", 1),
            ("Torneira De Cozinha" , 60.99, "3 meses", 2),
            ("Abajur LED Luz Amarela 3W" , 139.90, "3 meses", 3),
            ("Lâmpada LED Luz Amarela 3W" , 15.99, "2 meses", 3);
            
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 200 reais.
select * from tb_produto where preco >= 3 and preco <= 200;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like "%C%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica
select * from tb_produto inner join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id_categoria
			where tb_categoria.tipo = "Hidráulico";
