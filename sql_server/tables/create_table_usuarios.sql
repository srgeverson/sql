use db_teste
go


CREATE TABLE dbo.usuarios
(
	id                     BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	nome                   VARCHAR(80),
	email                  VARCHAR(255) NOT NULL UNIQUE,
	senha                  VARCHAR(255) NULL,
	situacao               BIGINT NULL,
	codigo_acesso          VARCHAR(80),
	data_operacao          DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE(),
	data_ultimo_acesso     DATETIMEOFFSET NULL,
	usuario_id  BIGINT NULL FOREIGN KEY (usuario_id) REFERENCES dbo.usuarios(id)
);