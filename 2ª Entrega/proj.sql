--
-- File generated with SQLiteStudio v3.1.1 on ter abr 10 18:06:56 2018
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Cliente
CREATE TABLE Cliente (idCliente INTEGER NOT NULL PRIMARY KEY REFERENCES Pessoa (idPessoa), dataNascimento DATETIME NOT NULL, review INTEGER NOT NULL CHECK (review >= 0 and review <= 5));

-- Table: ClienteMesaReservaMenu
CREATE TABLE ClienteMesaReservaMenu (idReserva INTEGER REFERENCES Reserva (idReserva), idMesa INTEGER REFERENCES Mesa, idCliente INTEGER REFERENCES Cliente (idCliente), idMenu INTEGER REFERENCES Menu, conta DOUBLE, hora DATETIME NOT NULL, PRIMARY KEY (idReserva, idMesa, idCliente, idMenu));

-- Table: Evento
CREATE TABLE Evento (idEvento INTEGER NOT NULL PRIMARY KEY, nome VARCHAR (100) NOT NULL, tema VARCHAR (20) NOT NULL, custo FLOAT NOT NULL, sala INTEGER REFERENCES Sala (idSala) NOT NULL);

-- Table: Funcionario
CREATE TABLE Funcionario (idFuncionario INTEGER NOT NULL PRIMARY KEY REFERENCES Pessoa (idPessoa), ordenado FLOAT NOT NULL CHECK (ordenado > 0), periodoContrato FLOAT NOT NULL CHECK (periodoContrato > 0));

-- Table: Menu
CREATE TABLE Menu (numero INTEGER NOT NULL PRIMARY KEY, nome VARCHAR (20) NOT NULL);

-- Table: MenuPrato
CREATE TABLE MenuPrato (idMenu INTEGER REFERENCES Menu, idPrato INTEGER REFERENCES Prato (idPrato), PRIMARY KEY (idMenu, idPrato));

-- Table: Mesa
CREATE TABLE Mesa (numero INTEGER NOT NULL PRIMARY KEY, lugares INTEGER NOT NULL CHECK (lugares == 2 || lugares == 4 || lugares == 10), empregado INTEGER NOT NULL REFERENCES Funcionario (idFuncionario), sala INTEGER NOT NULL REFERENCES Sala (idSala));

-- Table: MesaReserva
CREATE TABLE MesaReserva (idMesa INTEGER REFERENCES Mesa, idReserva INTEGER REFERENCES Reserva (idReserva), PRIMARY KEY (idMesa, idReserva));

-- Table: Pessoa
CREATE TABLE Pessoa (idPessoa INTEGER NOT NULL PRIMARY KEY, nome VARCHAR (100) NOT NULL, NIF BIGINT NOT NULL, nacionalidade VARCHAR (20) NOT NULL);

-- Table: Prato
CREATE TABLE Prato (idPrato INTEGER NOT NULL PRIMARY KEY, nome VARCHAR (20) NOT NULL, preco FLOAT NOT NULL, tipo INTEGER REFERENCES TipoPrato (idTipoPrato) NOT NULL);

-- Table: Reserva
CREATE TABLE Reserva (idReserva INTEGER NOT NULL PRIMARY KEY, horas DATETIME NOT NULL, numeroPessoas INTEGER NOT NULL CHECK (numeroPessoas > 0));

-- Table: Sala
CREATE TABLE Sala (idSala INTEGER NOT NULL PRIMARY KEY, nome VARCHAR (100) NOT NULL, responsavel INTEGER REFERENCES Funcionario (idFuncionario));

-- Table: TipoPrato
CREATE TABLE TipoPrato (idTipoPrato INTEGER NOT NULL PRIMARY KEY, nome VARCHAR (20) NOT NULL UNIQUE);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
