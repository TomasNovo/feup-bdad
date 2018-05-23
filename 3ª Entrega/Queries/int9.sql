-- Qual o tipo de menu mais pedido pelos clientes
.mode	columns
.headers	on
.nullvalue	NULL


SELECT Menu.nome as Nome
FROM Menu join (SELECT Menu.numero as n, count(*) as total
            FROM Cliente, ClienteMesaReservaMenu, Menu
            WHERE ClienteMesaReservaMenu.idCliente = Cliente.idCliente
            AND ClienteMesaReservaMenu.idMenu = Menu.numero
            GROUP BY Menu.numero) as A
on Menu.numero = A.n
WHERE total = (SELECT max(s)
            FROM (SELECT Menu.numero as n, count(*) as s
                FROM Cliente, ClienteMesaReservaMenu, Menu
                WHERE ClienteMesaReservaMenu.idCliente = Cliente.idCliente
                AND ClienteMesaReservaMenu.idMenu = Menu.numero
                GROUP BY Menu.numero)

);

