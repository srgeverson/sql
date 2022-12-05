/************************************************************
 * Code formatted by SoftTree SQL Assistant © v11.0.35
 * Time: 01/12/2022 20:45:54
 ************************************************************/

USE db_teste;
GO

CREATE TABLE permissoes
(
	id                BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	nome              VARCHAR(220) NOT NULL,
	descricao         VARCHAR(220) NOT NULL,
	ativo             TINYINT NOT NULL,
	data_cadastro     DATETIME NOT NULL,
	data_operacao     DATETIME NOT NULL,
	sistemas_id       BIGINT FOREIGN KEY REFERENCES sistemas(id)
);