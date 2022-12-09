/************************************************************
 * Code formatted by SoftTree SQL Assistant © v11.0.35
 * Time: 07/12/2022 21:58:51
 ************************************************************/

CREATE TABLE usuarios_permissoes
(
	id                BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	usuario_id        BIGINT NOT NULL FOREIGN KEY REFERENCES usuarios(id),
	permissao_id      BIGINT NOT NULL FOREIGN KEY REFERENCES permissoes(id),
	ativo             BIT NOT NULL DEFAULT(1),
	data_cadastro     DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE(),
	data_operacao     DATETIMEOFFSET NULL
);