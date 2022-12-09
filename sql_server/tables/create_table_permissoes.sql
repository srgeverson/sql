/************************************************************
 * Code formatted by SoftTree SQL Assistant © v11.0.35
 * Time: 07/12/2022 21:57:56
 ************************************************************/

USE db_teste;
GO

CREATE TABLE permissoes
(
	id                BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	nome              VARCHAR(220) NOT NULL,
	descricao         VARCHAR(220) NOT NULL,
	sistema_id        BIGINT NOT NULL FOREIGN KEY REFERENCES sistemas(id),
	ativo             BIT NOT NULL DEFAULT(1),
	data_cadastro     DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE(),
	data_operacao     DATETIMEOFFSET NULL
);