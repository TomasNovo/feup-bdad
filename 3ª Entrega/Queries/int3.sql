-- Nome dos funcionários com ordenado inferior a 450€
.mode	columns
.headers	on
.nullvalue	NULL

Select nome, ordenado
From Pessoa, Funcionario
Where idPessoa = idFuncionario and ordenado < 450;
