-- Custo médio dos eventos realizados nas salas
.mode	columns
.headers	on
.nullvalue	NULL

SELECT avg(custo) AS CustoMedioEventos
FROM Evento;