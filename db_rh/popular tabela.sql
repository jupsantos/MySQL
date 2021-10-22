insert into tb_funcionario(nome, documento, nascimento_data, registro_data, cargo)
		values ("Julianne Santos", "12.233.234-2", '1999-05-04', '2021-02-01', "Recrutador");
        
insert into tb_funcionario(nome, documento, nascimento_data, registro_data, cargo)
		values ("Kleber Pinheiro", "12.234.443", '1993-06-27', '2018-01-20', "Gestor de Recrutamento");
        
insert into tb_funcionario(nome, documento, nascimento_data, registro_data, cargo)
	values ("Margarete Santos", "23.234.443", '1974-05-26', '1997-05-20', "Analista de recursos humanos");
    
insert into tb_funcionario(nome, documento, nascimento_data, registro_data, cargo)
		values ("Lucinaldo Santos", "45.234.443", '1962-11-05', '2005-01-20', "Analista de treinamento");
        
update `db_rh`.`tb_funcionario` set `salario`=1500.00 where(`id_funcionario`=1);

update `db_rh`.`tb_funcionario` set `salario`=4000.00 where(`id_funcionario`=2);

update `db_rh`.`tb_funcionario` set `salario`=6000.00 where(`id_funcionario`=3);

update `db_rh`.`tb_funcionario` set `salario`=4500.00 where(`id_funcionario`=4);

select * from tb_funcionario;