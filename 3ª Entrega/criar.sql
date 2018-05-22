-- Table: Cliente
DROP TABLE IF EXISTS Cliente;

CREATE TABLE Cliente (
    idCliente      INTEGER  NOT NULL
                            PRIMARY KEY
                            REFERENCES Pessoa (idPessoa),
    dataNascimento DATETIME,
    review         INTEGER  NOT NULL
                            CHECK (review >= 0 AND
                                   review <= 5)
);


-- Table: ClienteMesaReservaMenu
DROP TABLE IF EXISTS ClienteMesaReservaMenu;

CREATE TABLE ClienteMesaReservaMenu (
    idReserva INTEGER  REFERENCES Reserva (idReserva),
    idMesa    INTEGER  REFERENCES Mesa (numero),
    idCliente INTEGER  REFERENCES Cliente (idCliente),
    idMenu    INTEGER  REFERENCES Menu (numero),
    conta     DOUBLE,
    dataHora  DATETIME,
    PRIMARY KEY (
        idReserva,
        idMesa,
        idCliente,
        idMenu
    )
);


-- Table: Evento
DROP TABLE IF EXISTS Evento;

CREATE TABLE Evento (
    idEvento INTEGER       NOT NULL
                           PRIMARY KEY,
    nome     VARCHAR (100) NOT NULL,
    tema     VARCHAR (20)  NOT NULL,
    custo    FLOAT         NOT NULL,
    sala     INTEGER       REFERENCES Sala (idSala)
                           NOT NULL
);


-- Table: Funcionario
DROP TABLE IF EXISTS Funcionario;

CREATE TABLE Funcionario (
    idFuncionario   INTEGER NOT NULL
                            PRIMARY KEY
                            REFERENCES Pessoa (idPessoa),
    ordenado        FLOAT   NOT NULL
                            CHECK (ordenado > 0),
    periodoContrato FLOAT   NOT NULL
                            CHECK (periodoContrato > 0)
);


-- Table: Menu
DROP TABLE IF EXISTS Menu;

CREATE TABLE Menu (
    numero INTEGER      NOT NULL
                        PRIMARY KEY,
    nome   VARCHAR (20) NOT NULL
                        UNIQUE
);


-- Table: MenuPrato
DROP TABLE IF EXISTS MenuPrato;

CREATE TABLE MenuPrato (
    idMenu  INTEGER REFERENCES Menu (numero),
    idPrato INTEGER REFERENCES Prato (idPrato),
    PRIMARY KEY (
        idMenu,
        idPrato
    )
);


-- Table: Mesa
DROP TABLE IF EXISTS Mesa;

CREATE TABLE Mesa (
    numero    INTEGER NOT NULL
                      PRIMARY KEY,
    lugares   INTEGER NOT NULL
                      CHECK (lugares == 2 OR
                             lugares == 4 OR
                             lugares == 10),
    empregado INTEGER NOT NULL
                      REFERENCES Funcionario (idFuncionario),
    sala      INTEGER NOT NULL
                      REFERENCES Sala (idSala)
);


-- Table: Pessoa
DROP TABLE IF EXISTS Pessoa;

CREATE TABLE Pessoa (
    idPessoa      INTEGER       NOT NULL
                                PRIMARY KEY,
    nome          VARCHAR (100) NOT NULL,
    NIF           BIGINT        NOT NULL
                                UNIQUE,
    nacionalidade VARCHAR (20)  NOT NULL
);


-- Table: Prato
DROP TABLE IF EXISTS Prato;

CREATE TABLE Prato (
    idPrato INTEGER      NOT NULL
                         PRIMARY KEY,
    nome    VARCHAR (20) NOT NULL
                         UNIQUE,
    preco   FLOAT        NOT NULL,
    tipo    INTEGER      REFERENCES TipoPrato (idTipoPrato)
                         NOT NULL
);


-- Table: Reserva
DROP TABLE IF EXISTS Reserva;

CREATE TABLE Reserva (
    idReserva     INTEGER  NOT NULL
                           PRIMARY KEY,
    dataHora      DATETIME NOT NULL,
    numeroPessoas INTEGER  NOT NULL
                           CHECK (numeroPessoas > 0)
);


-- Table: Sala
DROP TABLE IF EXISTS Sala;

CREATE TABLE Sala (
    idSala      INTEGER       NOT NULL
                              PRIMARY KEY,
    nome        VARCHAR (100) NOT NULL,
    responsavel INTEGER       REFERENCES Funcionario (idFuncionario)
                              NOT NULL
);


-- Table: TipoPrato
DROP TABLE IF EXISTS TipoPrato;

CREATE TABLE TipoPrato (
    idTipoPrato INTEGER      NOT NULL
                             PRIMARY KEY,
    nome        VARCHAR (20) NOT NULL
                             UNIQUE
);
