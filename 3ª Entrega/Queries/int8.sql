-- Conta total de cada mesa por dia
.mode	columns
.headers	on
.nullvalue	NULL

SELECT Mesa.numero AS numeroMesa, sum(precoMenu) AS contaMesa, Reserva.dataHora AS Dia
FROM Mesa, ClienteMesaReservaMenu, Reserva,
    (SELECT Menu.numero, sum(Prato.preco) AS precoMenu
     FROM Menu, MenuPrato, Prato
     WHERE Menu.numero = MenuPrato.idMenu
     AND Prato.idPrato = MenuPrato.idPrato
     GROUP BY Menu.numero) A
WHERE Mesa.numero = ClienteMesaReservaMenu.idMesa
AND ClienteMesaReservaMenu.idMenu = A.numero
AND ClienteMesaReservaMenu.idReserva = Reserva.idReserva
GROUP BY Reserva.dataHora, Mesa.numero;