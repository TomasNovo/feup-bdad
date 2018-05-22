-- Nomes dos funcionários que são responsáveis por uma sala e o respetivo número da sala
-- ERRO : nome não está a aparecer
.mode	columns
.headers	on
.nullvalue	NULL

Select Pessoa.nome, idSala
From Pessoa, Funcionario, Sala
Where Pessoa.idPessoa = Funcionario.idFuncionario and Funcionario.idFuncionario = responsavel;