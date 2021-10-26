create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id_categoria bigint auto_increment,
    categoria varchar(255),
    tipo enum("Salgada", "Doce"),
    borda varchar(100),
    tamanho enum("Broto", "Média", "Grande"),
    primary key(id_categoria)
);

insert into tb_categoria(categoria, tipo, borda, tamanho)
			values  ("Aves", "Salgada", "Catupity", "Grande"),
					("Especiais", "Salgada", "Cheddar", "Broto"),
                    ("Queijo", "Salgada", "Nenhum", "Média"),
                    ("Carnes", "Salgada", "Queijo", "Grande"),
                    ("Chocolate", "Doce", "Nutella", "Broto");

create table tb_pizza(
	id_pizza bigint auto_increment,
    sabor varchar(200),
    valor decimal(5,2),
    stt boolean,
    fk_id_categoria bigint,
    primary key(id_pizza),
    foreign key(fk_id_categoria) references tb_categoria(id_categoria)
);


insert into tb_pizza(sabor, valor, stt, fk_id_categoria) 
			values  ("Frango com Catupiry", 71.00, true, 1),
					("Frango com Milho", 65.00, false, 1),
                    ("Alcatra com Queijo", 75.00, true, 4),
                    ("Morango com Chocolate", 40.00, true, 5),
                    ("Camarão com Catupiry", 50.00, true, 2),
                    ("Strogonoff", 69.00, true, 4);
                    
-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select * from tb_pizza where valor > 45;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
select * from tb_pizza where valor >= 29 and valor <= 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where sabor like "%C%";

-- Faça um um select com Inner join entre tabela categoria e pizza.
select * from tb_pizza inner join tb_categoria on tb_pizza.fk_id_categoria = tb_categoria.id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica
select tb_pizza.sabor, tb_pizza.valor, tb_categoria.categoria, tb_categoria.tipo, tb_categoria.borda, tb_categoria.tamanho
		from tb_pizza inner join tb_categoria on tb_pizza.fk_id_categoria = tb_categoria.id_categoria
		where tb_categoria.categoria = "Carnes";
