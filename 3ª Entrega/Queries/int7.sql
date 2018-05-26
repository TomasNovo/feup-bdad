-- Listagem dos clientes, número de reserva e número da mesa tendo como critério uma limitação nas datas das reservas
.mode	columns
.headers	on
.nullvalue	NULL

SELECT nome, Reserva.idReserva, numero, Reserva.dataHora
FROM Pessoa, Cliente, Mesa, ClienteMesaReservaMenu, Reserva
WHERE Pessoa.idPessoa = Cliente.idCliente 
AND ClienteMesaReservaMenu.idCliente = Cliente.idCliente
AND ClienteMesaReservaMenu.idMesa = Mesa.numero
AND ClienteMesaReservaMenu.idReserva = Reserva.idReserva
AND Reserva.dataHora BETWEEN '2018-06-14' AND '2018-11-30'
ORDER BY Reserva.dataHora;