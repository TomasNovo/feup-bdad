-- Custo total dos eventos
.mode	columns
.headers	on
.nullvalue	NULL

Select sum(custo) as CustoTotalEventos
From Evento;