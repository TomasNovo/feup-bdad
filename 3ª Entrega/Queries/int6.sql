-- Nome dos clientes e do funcionário responsável pelo cliente e quando
.mode	columns
.headers	on
.nullvalue	NULL

SELECT DISTINCT Pessoa.nome as Nome_Cliente,
                Funcionario_Responsavel,
                strftime('%Y-%m-%d', Reserva.dataHora) as Dia
FROM Pessoa, Cliente, ClienteMesaReservaMenu, Reserva,
    (SELECT Mesa.numero as Numero_Mesa, Pessoa.nome as Funcionario_Responsavel
    FROM Mesa, Pessoa, Funcionario
    WHERE Pessoa.idPessoa = Funcionario.idFuncionario
    and Mesa.Empregado = Funcionario.idFuncionario) as A
WHERE Pessoa.idPessoa = Cliente.idCliente
AND ClienteMesaReservaMenu.idCliente = Cliente.idCliente
AND ClienteMesaReservaMenu.idReserva = Reserva.idReserva
AND ClienteMesaReservaMenu.idMesa = A.Numero_Mesa
ORDER BY Nome_Cliente;