-- Conta de cada mesa
.mode	columns
.headers	on
.nullvalue	NULL


SELECT Mesa.numero AS numeroMesa, sum(precoMenu) AS contaMesa
FROM Mesa, ClienteMesaReservaMenu,
(SELECT Menu.numero, Prato.idPrato, sum(preco) AS precoMenu
FROM Menu, MenuPrato, Prato
WHERE Menu.numero = MenuPrato.idMenu
AND Prato.idPrato = MenuPrato.idPrato
GROUP BY Menu.numero) A
WHERE Mesa.numero = ClienteMesaReservaMenu.idMesa
AND ClienteMesaReservaMenu.idMenu = A.numero
GROUP BY Mesa.numero;