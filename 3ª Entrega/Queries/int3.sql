-- Listar os 4 funcionarios com melhor ordenado
.mode	columns
.headers	on
.nullvalue	NULL

SELECT nome, ordenado
FROM Pessoa, Funcionario
WHERE idPessoa = idFuncionario
ORDER BY ordenado DESC
LIMIT 4;
