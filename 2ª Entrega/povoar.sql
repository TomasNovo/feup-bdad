PRAGMA foreign_keys = on;

-- Table: Cliente
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (1, '1920-09-15', 3);
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (2, '1969-09-09', 4);
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (3, '1980-01-31', 2);
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (4, '1974-09-01', 5);
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (5, '1999-12-19', 3);
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (6, '1976-06-19', 1);
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (7, '2002-02-11', 2);
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (8, '1958-02-07', 4);
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (9, '1983-04-27', 2);
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (10, '1946-03-16', 1);
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (11, '1953-09-20', 5);
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (12, '1920-04-28', 2);
INSERT INTO Cliente (idCliente, dataNascimento, review) VALUES (13, '1987-04-16', 4);

-- Table: ClienteMesaReservaMenu
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (1, 1, 1, 1, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (2, 2, 3, 2, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (1, 1, 4, 2, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (2, 2, 2, 2, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (2, 2, 10, 4, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (2, 2, 13, 4, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (3, 6, 12, 4, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (3, 6, 7, 1, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (3, 6, 6, 2, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (3, 6, 9, 2, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (3, 6, 5, 1, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (3, 6, 4, 2, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (3, 6, 3, 1, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (3, 6, 2, 4, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (3, 6, 1, 4, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (3, 6, 10, 1, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (5, 10, 12, 4, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (5, 10, 5, 1, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (6, 5, 12, 1, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (6, 5, 3, 2, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (4, 4, 6, 1, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (4, 4, 7, 4, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (4, 4, 8, 2, NULL, NULL);
INSERT INTO ClienteMesaReservaMenu (idReserva, idMesa, idCliente, idMenu, conta, dataHora) VALUES (4, 4, 11, 4, NULL, NULL);

-- Table: Evento
INSERT INTO Evento (idEvento, nome, tema, custo, sala) VALUES (1, 'FF7 Magic', 'Magia', 100, 1);
INSERT INTO Evento (idEvento, nome, tema, custo, sala) VALUES (2, 'Amadeu e os seus Animais', 'Animais', 50, 2);
INSERT INTO Evento (idEvento, nome, tema, custo, sala) VALUES (3, 'João Nuno e Comédia', 'Comédia', 20, 3);

-- Table: Funcionario
INSERT INTO Funcionario (idFuncionario, ordenado, periodoContrato) VALUES (14, 500, 5);
INSERT INTO Funcionario (idFuncionario, ordenado, periodoContrato) VALUES (15, 600, 2);
INSERT INTO Funcionario (idFuncionario, ordenado, periodoContrato) VALUES (16, 350, 1);
INSERT INTO Funcionario (idFuncionario, ordenado, periodoContrato) VALUES (17, 550, 10);
INSERT INTO Funcionario (idFuncionario, ordenado, periodoContrato) VALUES (18, 325, 2);
INSERT INTO Funcionario (idFuncionario, ordenado, periodoContrato) VALUES (19, 275, 4);

-- Table: Menu
INSERT INTO Menu (numero, nome) VALUES (1, 'Menu à casa');
INSERT INTO Menu (numero, nome) VALUES (2, 'Menu Económico');
INSERT INTO Menu (numero, nome) VALUES (4, 'Menu Veggie');

-- Table: MenuPrato
INSERT INTO MenuPrato (idMenu, idPrato) VALUES (1, 1);
INSERT INTO MenuPrato (idMenu, idPrato) VALUES (1, 7);
INSERT INTO MenuPrato (idMenu, idPrato) VALUES (2, 3);
INSERT INTO MenuPrato (idMenu, idPrato) VALUES (2, 9);
INSERT INTO MenuPrato (idMenu, idPrato) VALUES (4, 9);
INSERT INTO MenuPrato (idMenu, idPrato) VALUES (4, 12);
INSERT INTO MenuPrato (idMenu, idPrato) VALUES (1, 11);
INSERT INTO MenuPrato (idMenu, idPrato) VALUES (2, 11);
INSERT INTO MenuPrato (idMenu, idPrato) VALUES (4, 10);

-- Table: Mesa
INSERT INTO Mesa (numero, lugares, empregado, sala) VALUES (1, 2, 16, 1);
INSERT INTO Mesa (numero, lugares, empregado, sala) VALUES (2, 4, 14, 3);
INSERT INTO Mesa (numero, lugares, empregado, sala) VALUES (3, 10, 19, 2);
INSERT INTO Mesa (numero, lugares, empregado, sala) VALUES (4, 4, 15, 1);
INSERT INTO Mesa (numero, lugares, empregado, sala) VALUES (5, 2, 18, 2);
INSERT INTO Mesa (numero, lugares, empregado, sala) VALUES (6, 10, 17, 3);
INSERT INTO Mesa (numero, lugares, empregado, sala) VALUES (7, 2, 15, 1);
INSERT INTO Mesa (numero, lugares, empregado, sala) VALUES (8, 4, 17, 2);
INSERT INTO Mesa (numero, lugares, empregado, sala) VALUES (9, 10, 14, 3);
INSERT INTO Mesa (numero, lugares, empregado, sala) VALUES (10, 2, 16, 2);
INSERT INTO Mesa (numero, lugares, empregado, sala) VALUES (11, 2, 18, 3);

-- Table: Pessoa
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (1, 'Constance Rodriquez', 578098121, 'Sweden');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (2, 'Tanya Hunter', 803913124, 'Bonaire, Sint Eustatius and Saba');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (3, 'Perry Rosa', 935245690, 'Germany');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (4, 'Freya Sanchez', 839055062, 'Niue');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (5, 'Hakeem Hudson', 820534485, 'Benin');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (6, 'Thaddeus Camacho', 227274018, 'Lesotho');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (7, 'Galvin Lynch', 347420780, 'Papua New Guinea');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (8, 'Fiona Stokes', 243524719, 'Nicaragua');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (9, 'Moses Gilliam', 376056288, 'Wallis and Futuna');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (10, 'Elizabeth Randall', 883543803, 'Guadeloupe');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (11, 'Brielle Mays', 601405681, 'Niger');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (12, 'Hermione Mcneil', 396210037, 'Portugal');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (13, 'Clayton Hebert', 567386232, 'Nicaragua');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (14, 'Ciaran Hyde', 158741596, 'United States Minor Outlying Islands');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (15, 'Lane Parks', 113844038, 'Burundi');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (16, 'Karyn Mcclain', 418994041, 'Solomon Islands');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (17, 'Cedric Bush', 227781480, 'Uzbekistan');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (18, 'Emerson Avila', 969135124, 'Curaçao');
INSERT INTO Pessoa (idPessoa, nome, NIF, nacionalidade) VALUES (19, 'Urielle Stone', 342608588, 'Philippines');

-- Table: Prato
INSERT INTO Prato (idPrato, nome, preco, tipo) VALUES (1, 'Esparguete à Bolonhesa', 10, 2);
INSERT INTO Prato (idPrato, nome, preco, tipo) VALUES (2, 'Francesinha Transmontana', 8, 2);
INSERT INTO Prato (idPrato, nome, preco, tipo) VALUES (3, 'Prego à casa', 7, 2);
INSERT INTO Prato (idPrato, nome, preco, tipo) VALUES (4, 'Frango Assado', 6, 2);
INSERT INTO Prato (idPrato, nome, preco, tipo) VALUES (5, 'Bacalhau com Natas', 12, 1);
INSERT INTO Prato (idPrato, nome, preco, tipo) VALUES (6, 'Mousse Chocolate', 4, 4);
INSERT INTO Prato (idPrato, nome, preco, tipo) VALUES (7, 'Bolo de Bolacha', 3, 4);
INSERT INTO Prato (idPrato, nome, preco, tipo) VALUES (8, 'Sopa de cebola', 4, 5);
INSERT INTO Prato (idPrato, nome, preco, tipo) VALUES (9, 'Caldo verde', 4, 5);
INSERT INTO Prato (idPrato, nome, preco, tipo) VALUES (10, 'Pão d''alho', 2, 6);
INSERT INTO Prato (idPrato, nome, preco, tipo) VALUES (11, 'Pão', 1, 6);
INSERT INTO Prato (idPrato, nome, preco, tipo) VALUES (12, 'Salada Vegetariana', 6, 3);

-- Table: Reserva
INSERT INTO Reserva (idReserva, dataHora, numeroPessoas) VALUES (1, '2018-06-14T21:00', 2);
INSERT INTO Reserva (idReserva, dataHora, numeroPessoas) VALUES (2, '2019-02-14T20:30', 4);
INSERT INTO Reserva (idReserva, dataHora, numeroPessoas) VALUES (3, '2018-05-01T20:00', 10);
INSERT INTO Reserva (idReserva, dataHora, numeroPessoas) VALUES (4, '2018-09-29T20:45', 4);
INSERT INTO Reserva (idReserva, dataHora, numeroPessoas) VALUES (5, '2018-11-19T20:45', 2);
INSERT INTO Reserva (idReserva, dataHora, numeroPessoas) VALUES (6, '2018-06-14T20:00', 2);

-- Table: Sala
INSERT INTO Sala (idSala, nome, responsavel) VALUES (1, 'Norte', 15);
INSERT INTO Sala (idSala, nome, responsavel) VALUES (2, 'Sul', 17);
INSERT INTO Sala (idSala, nome, responsavel) VALUES (3, 'Poente', 14);

-- Table: TipoPrato
INSERT INTO TipoPrato (idTipoPrato, nome) VALUES (1, 'Peixe');
INSERT INTO TipoPrato (idTipoPrato, nome) VALUES (2, 'Carne');
INSERT INTO TipoPrato (idTipoPrato, nome) VALUES (3, 'Vegetariano');
INSERT INTO TipoPrato (idTipoPrato, nome) VALUES (4, 'Sobremesa');
INSERT INTO TipoPrato (idTipoPrato, nome) VALUES (5, 'Sopa');
INSERT INTO TipoPrato (idTipoPrato, nome) VALUES (6, 'Entradas');
