select nome as "Nome do Aluno", nasc_data as "Data de Nascimento", 
		turma as "Turma", curso as "Curso", nota as "Nota" from tb_aluno where nota >= 7;

select nome as "Nome do Aluno", nasc_data as "Data de Nascimento", 
		turma as "Turma", curso as "Curso", nota as "Nota" from tb_aluno where nota < 7 and nota >= 5;
        
select nome as "Nome do Aluno", nasc_data as "Data de Nascimento", 
		turma as "Turma", curso as "Curso", nota as "Nota" from tb_aluno where nota < 5;