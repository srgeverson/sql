/************************************************************
 * Code formatted by SoftTree SQL Assistant © v11.0.35
 * Time: 07/12/2022 22:26:09
 ************************************************************/

CREATE TABLE usuarios_foto_perfil
(
	id             BIGINT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	usuario_id     BIGINT NOT NULL UNIQUE FOREIGN KEY REFERENCES usuarios(id),
	nome           VARCHAR(50) NULL,
	mime_type      VARCHAR(50) NULL,
	caminho        VARCHAR(255) NULL,
	arquivo        VARBINARY(MAX) NULL
);
