-- Garante que existem no máximo 4 salas

CREATE TRIGGER IF NOT EXISTS t2
AFTER INSERT ON Sala
WHEN (SELECT count(*) FROM Sala) > 4
BEGIN
    DELETE FROM Sala WHERE idSala = New.idSala;
    DELETE FROM Evento WHERE sala = New.idSala;
    DELETE FROM Mesa WHERE sala = New.idSala;
END;