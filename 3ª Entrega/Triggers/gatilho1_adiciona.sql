-- Garante que nao ha 2 pessoas com o mesmo id

CREATE TRIGGER IF NOT EXISTS t1
BEFORE INSERT on Pessoa
WHEN exists (SELECT * from Pessoa
            WHERE Pessoa.idPessoa = New.idPessoa)
BEGIN
    SELECT RAISE(abort, 'erro');
END;