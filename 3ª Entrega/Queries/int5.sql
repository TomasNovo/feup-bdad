-- Quais os clientes que pediram um prato de tipo Carne
.mode	columns
.headers	on
.nullvalue	NULL

select distinct Pessoa.nome, Prato.nome as nomePrato
From Pessoa, Cliente, TipoPrato, Prato, ClienteMesaReservaMenu, Menu, MenuPrato
Where Pessoa.idPessoa = Cliente.idCliente
and Cliente.idCliente = ClienteMesaReservaMenu.idCliente
and Menu.numero = ClienteMesaReservaMenu.idMenu
and MenuPrato.idMenu = Menu.numero
and MenuPrato.idPrato = Prato.idPrato
and TipoPrato.idTipoPrato = Prato.tipo
and TipoPrato.nome = 'Carne';