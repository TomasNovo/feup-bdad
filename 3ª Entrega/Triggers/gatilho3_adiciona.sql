CREATE TRIGGER IF NOT EXISTS t3
-- BEFORE INSERT on Pessoa
-- WHEN exists (SELECT * from Pessoa
--             WHERE Pessoa.idPessoa = New.idPessoa)
-- BEGIN
--     SELECT RAISE(abort, 'erro');
-- END;