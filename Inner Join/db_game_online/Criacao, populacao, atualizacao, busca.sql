create database db_generation_game_online;

use db_generation_game_online;


-- Crie uma tabela tb_classe
create table tb_classe(
	id_classe bigint auto_increment,
    tipo varchar(100),
    vida varchar(50),
    vidaExtra varchar(50),
    primary key(id_classe)
);

-- Popule esta tabela
insert into tb_classe(tipo, vida, vidaExtra) 
			values ("Fogo", "100hp", "200"),
				   ("Agua", "200hp", "150"),
                   ("Terra", "150hp", "175"),
                   ("Ar", "100hp", "250");
                   
select * from tb_classe;

alter table tb_classe modify tipo varchar(100) unique;
desc tb_classe;


-- Crie uma tabela tb_personagem
create table tb_personagem(
	id_personagem bigint auto_increment,
    nome varchar(255) not null,
    sexo char(1) not null,
    habilidade varchar(255),
    pet varchar(255),
    defesa real,
    fk_classe bigint,
    primary key(id_personagem),
    foreign key(fk_classe) references tb_classe(id_classe)
);

-- Popule esta tabela
insert into tb_personagem(nome, sexo, habilidade, pet, defesa, fk_classe) 
			values ("Maxim", 'M', "Soltar fogo pelos olhos", "Dragao", 1000, 1),
				   ("Evelyn", 'F', "Suspende o ar do oponente", "Fenix", 2000, 4),
                   ("Mooco", "F", "Manipula as plantas ao seu favor", "Cobra", 1300, 3),
                   ("Rafael", 'M', "Manipula os animais marinhos ao seu favor", "Tubarao", 1200, 2),
                   ("Jai", 'M', "Manipula a terra ao seu favor", "Escorpiao", 1500, 3),
                   ("Nikita", 'F', "Manipula a água ao seu favor", "Água-viva", 2500, 2);
desc tb_personagem;                 

select * from tb_personagem;

alter table tb_personagem add ataque real;

update tb_personagem set ataque=750 where id_personagem=6;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where ataque >= 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where defesa >= 1000 and defesa <= 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where nome like "%C%";

-- Faça um um select com Inner join entre tabela classe e personagem.
select * from tb_personagem inner join tb_classe on tb_personagem.fk_classe = tb_classe.id_classe;

-- Faça um select onde traga todos os personagem de uma classe específica
select * from tb_personagem inner join tb_classe on tb_personagem.fk_classe = tb_classe.id_classe
		where tb_classe.tipo = "Água";




