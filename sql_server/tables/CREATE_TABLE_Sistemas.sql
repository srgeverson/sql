/************************************************************
 * Code formatted by SoftTree SQL Assistant © v11.0.35
 * Time: 01/12/2022 20:34:34
 ************************************************************/

USE db_teste; 
GO

CREATE TABLE Sistemas
(
	id                BIGINT IDENTITY(1, 1) PRIMARY KEY,
	nome              VARCHAR(50) NOT NULL UNIQUE,
	descricao         VARCHAR(100) NOT NULL,
	ativo             BIT NOT NULL DEFAULT(1),
	data_cadastro     DATETIMEOFFSET NOT NULL DEFAULT GETDATE(),
	data_operacao     DATETIMEOFFSET
);
