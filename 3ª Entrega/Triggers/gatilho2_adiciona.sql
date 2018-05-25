-- Garante que no máximo existem apenas 4 salas

CREATE TRIGGER IF NOT EXISTS t2
AFTER INSERT on Sala
WHEN (SELECT count(*) from Sala) > 4
BEGIN
    DELETE FROM Sala WHERE idSala = New.idSala;
    DELETE FROM Evento WHERE sala = New.idSala;
    DELETE FROM Mesa WHERE sala = New.idSala;
END;