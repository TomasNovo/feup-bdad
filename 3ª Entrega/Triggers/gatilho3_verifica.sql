.mode	columns
.headers	on

.print Inicio
SELECT * FROM MenuPrato WHERE idMenu = 1;

DELETE FROM MenuPrato
WHERE idMenu = 1 AND idPrato = 1;

.print \nRemovido Prato 1
SELECT * FROM MenuPrato WHERE idMenu = 1;

DELETE FROM MenuPrato
WHERE idMenu = 1 AND idPrato = 7;

.print \nRemovido Prato 7
SELECT * FROM MenuPrato WHERE idMenu = 1;

DELETE FROM MenuPrato
WHERE idMenu = 1 AND idPrato = 11;

.print \nRemovido Prato 11
SELECT * FROM MenuPrato WHERE idMenu = 1;