-- Nomes dos funcionários que são responsáveis por uma sala e o respetivo número da sala
.mode	columns
.headers	on
.nullvalue	NULL

SELECT Pessoa.nome, idSala
FROM Pessoa, Funcionario, Sala
WHERE Pessoa.idPessoa = Funcionario.idFuncionario 
AND Funcionario.idFuncionario = responsavel;