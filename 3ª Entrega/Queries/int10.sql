-- Nome do segundo funcionário com um ordenado mais elevado
.mode	columns
.headers	on
.nullvalue	NULL

SELECT DISTINCT Pessoa.nome
FROM Funcionario JOIN Pessoa
ON Funcionario.idFuncionario = Pessoa.idPessoa
WHERE Funcionario.ordenado = (SELECT MIN(o)
                              FROM (SELECT ordenado AS o
                                    FROM Funcionario
                                    GROUP BY ordenado
                                    ORDER BY ordenado DESC
                                    LIMIT 2)
                              ); 
