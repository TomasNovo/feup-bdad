-- Garante que não há 2 pessoas com o mesmo id

CREATE TRIGGER IF NOT EXISTS t1
BEFORE INSERT ON Pessoa
WHEN exists (SELECT * FROM Pessoa
            WHERE Pessoa.idPessoa = New.idPessoa)
BEGIN
    SELECT RAISE(ABORT, 'erro');
END;