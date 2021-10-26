create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
    id_categoria bigint auto_increment,
    nome varchar(30) not null,
    tipo varchar(255) not null,
	primary key(id_categoria)
);

insert into tb_categoria (nome, tipo)
	values  ("Frutas", "Frescas"),
			("Legumes" , "Frescos"),
            ("Legumes" , "Congelados"),
            ( "Verduras" , "Frescas"),
            ("Raízes", "Frescas"),
            ("Frutas Secas" , "Processadas");
            
create  table  tb_produto (
    id_produto bigint auto_increment,
    nome varchar(255) not null,
    quantidade real not null,
    unidade varchar(20) not null,
    preco real,
    fk_id_categoria bigint,
    primary key(id_produto),
    foreign key(fk_id_categoria) references tb_categoria(id_categoria)
);

insert into tb_produto(nome, quantidade, unidade, preco, fk_id_categoria)
	values  ("Morango", 1, "Caixa", 6.99, 1),
			("Banana", 1 , "Kg" , 5.99, 1),
			("Tomate", 1, "Kg", 8.85 , 1),
            ("Berinjela", 1, "Kg", 10.98, 2),
            ("Alface", 1 , "Maço" , 4.50 , 4),
            ("Coentro", 1, "Maço" , 7.98, 4),
            ("Batata", 1, "Kg", 9.65, 5),
            ("Mix de legumes", 1 , "Pacote", 29.89, 3),
            ("Uva passa", 500 , "g" , 20.9, 6);
            
-- Faça um select que retorne os Produtos com o valor maior do que 5 reais.
select * from tb_produto where preco > 5;

-- Faça um select trazendo os Produtos com valor entre 3 e 28 reais.
select * from tb_produto where preco >=3 and preco <= 28;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like "%C%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica
select * from tb_produto inner join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id_categoria
			where tb_categoria.nome = "Legumes";