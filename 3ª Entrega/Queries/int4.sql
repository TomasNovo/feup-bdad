-- Clientes com menos de 40 anos, ordenados por idade
.mode	columns
.headers	on
.nullvalue	NULL

SELECT nome, (DATE('now') - dataNascimento) AS idade
FROM Cliente, Pessoa
WHERE Pessoa.idPessoa = Cliente.idCliente
AND idade < 40
ORDER BY idade ASC;

