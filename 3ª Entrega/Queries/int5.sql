-- Quais os clientes que pediram um prato de tipo Carne
.mode	columns
.headers	on
.nullvalue	NULL

SELECT DISTINCT Pessoa.nome, Prato.nome AS nomePrato
FROM Pessoa, Cliente, TipoPrato, Prato, ClienteMesaReservaMenu, Menu, MenuPrato
WHERE Pessoa.idPessoa = Cliente.idCliente
AND Cliente.idCliente = ClienteMesaReservaMenu.idCliente
AND Menu.numero = ClienteMesaReservaMenu.idMenu
AND MenuPrato.idMenu = Menu.numero
AND MenuPrato.idPrato = Prato.idPrato
AND TipoPrato.idTipoPrato = Prato.tipo
AND TipoPrato.nome = 'Carne';