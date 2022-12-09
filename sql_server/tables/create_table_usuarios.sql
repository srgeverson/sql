/************************************************************
 * Code formatted by SoftTree SQL Assistant © v11.0.35
 * Time: 07/12/2022 22:28:04
 ************************************************************/

CREATE TABLE usuarios
(
	id                     BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	nome                   VARCHAR(80),
	email                  VARCHAR(255) NOT NULL UNIQUE,
	senha                  VARCHAR(255) NULL,
	ativo                  BIT NOT NULL DEFAULT(1),
	codigo_acesso          VARCHAR(80),
	data_cadastro          DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE(),
	data_operacao          DATETIMEOFFSET NULL,
	data_ultimo_acesso     DATETIMEOFFSET NULL
);