-- Qual o tipo de menu mais pedido pelos clientes
.mode	columns
.headers	on
.nullvalue	NULL

DROP VIEW IF EXISTS nPedidos;

CREATE VIEW IF NOT EXISTS nPedidos AS
SELECT Menu.numero as n, count(*) as total
FROM Cliente, ClienteMesaReservaMenu, Menu
WHERE ClienteMesaReservaMenu.idCliente = Cliente.idCliente
AND ClienteMesaReservaMenu.idMenu = Menu.numero
GROUP BY Menu.numero;

SELECT Menu.nome as menu
FROM Menu join nPedidos
on Menu.numero = nPedidos.n
WHERE total = (SELECT max(total)
            FROM nPedidos);

DROP VIEW IF EXISTS nPedidos;