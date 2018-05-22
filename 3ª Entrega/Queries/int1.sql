-- Custo medio dos eventos de todas as salas
.mode	columns
.headers	on
.nullvalue	NULL

SELECT avg(custo) AS CustoMedioEventos
FROM Evento;