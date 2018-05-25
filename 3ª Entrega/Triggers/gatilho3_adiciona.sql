-- Garante que um menu tem pelo menos 1 prato

CREATE TRIGGER IF NOT EXISTS t3
BEFORE DELETE ON MenuPrato
WHEN (SELECT count(idPrato)
    FROM MenuPrato
    WHERE idMenu = OLD.idMenu) = 1
BEGIN
    SELECT RAISE(ignore);
END;