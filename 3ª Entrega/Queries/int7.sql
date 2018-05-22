-- Nomes dos clientes, número da reserva e número da mesa em que as reservas são de data superior a 2018-09-10. Ordenado pela data
.mode	columns
.headers	on
.nullvalue	NULL

Select nome, Reserva.idReserva, numero, Reserva.dataHora
From Pessoa, Cliente, Mesa, ClienteMesaReservaMenu, Reserva
Where Pessoa.idPessoa = Cliente.idCliente 
and ClienteMesaReservaMenu.idCliente = Cliente.idCliente
and ClienteMesaReservaMenu.idMesa = Mesa.numero
and ClienteMesaReservaMenu.idReserva = Reserva.idReserva
and Reserva.dataHora > '2018-09-10'
Order by Reserva.dataHora;