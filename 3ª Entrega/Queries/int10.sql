-- Qual o segundo funcionário com um ordenado mais elevado
.mode	columns
.headers	on
.nullvalue	NULL

SELECT DISTINCT Pessoa.idPessoa
FROM Funcionario join Pessoa
on Funcionario.idFuncionario = Pessoa.idPessoa
WHERE Funcionario.ordenado = (SELECT MIN(o)
                              FROM (SELECT ordenado as o
                                    FROM Funcionario
                                    GROUP BY ordenado
                                    ORDER BY ordenado DESC
                                    LIMIT 2)
                              ); 
