-- Listagem dos clientes que pediram um menu em que o prato é do tipo Carne
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