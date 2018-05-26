-- Nomes dos clientes e do funcionário responsável por cada um dos clientes e a data do atendimento
.mode	columns
.headers	on
.nullvalue	NULL

SELECT DISTINCT Pessoa.nome AS Nome_Cliente,
                Funcionario_Responsavel,
                strftime('%Y-%m-%d', Reserva.dataHora) AS Dia
FROM Pessoa, Cliente, ClienteMesaReservaMenu, Reserva,
    (SELECT Mesa.numero AS Numero_Mesa, Pessoa.nome AS Funcionario_Responsavel
    FROM Mesa, Pessoa, Funcionario
    WHERE Pessoa.idPessoa = Funcionario.idFuncionario
    AND Mesa.Empregado = Funcionario.idFuncionario) AS A
WHERE Pessoa.idPessoa = Cliente.idCliente
AND ClienteMesaReservaMenu.idCliente = Cliente.idCliente
AND ClienteMesaReservaMenu.idReserva = Reserva.idReserva
AND ClienteMesaReservaMenu.idMesa = A.Numero_Mesa
ORDER BY Nome_Cliente;