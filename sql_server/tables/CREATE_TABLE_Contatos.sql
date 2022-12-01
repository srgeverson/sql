CREATE TABLE Contatos
(
	Id             NUMERIC(18, 0) IDENTITY(1, 1) PRIMARY KEY,
	Nome           VARCHAR(100),
	sobre_nome     VARCHAR(100),
	email          VARCHAR(100),
	telefone       VARCHAR(200)
);