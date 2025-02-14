use db_teste
go
CREATE TABLE dbo.situacoes (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    descricao VARCHAR(100) NOT NULL UNIQUE,
    data_operacao DATETIME NOT NULL  DEFAULT GETDATE(),
    usuario_id BIGINT NULL
)
GO
INSERT INTO dbo.situacoes(descricao)
SELECT 'Ativo' UNION
SELECT 'Bloqueado' UNION
SELECT 'Cancelado' 
GO

set IDENTITY_INSERT dbo.situacoes ON
INSERT INTO dbo.situacoes(id,descricao)
SELECT 0, 'Inexistente' 
set IDENTITY_INSERT dbo.situacoes OFF
GO
-- SELECT s.* FROM dbo.situacoes AS s;

CREATE TABLE dbo.usuarios
(
	id                     BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	nome                   VARCHAR(80),
	email                  VARCHAR(255) NOT NULL UNIQUE,
	senha                  VARCHAR(255) NULL,
	situacao               BIGINT NOT NULL FOREIGN KEY (situacao) REFERENCES dbo.situacoes(id),
	codigo_acesso          VARCHAR(80),
	data_operacao          DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE(),
	data_ultimo_acesso     DATETIMEOFFSET NULL,
	usuario_id  BIGINT NULL FOREIGN KEY (usuario_id) REFERENCES dbo.usuarios(id)
)
GO
INSERT INTO dbo.usuarios
(nome,email,situacao)
SELECT 'administrator','geversonjosedesouza@gmail.com',1
--SELECT * FROM dbo.usuarios AS u

CREATE TABLE dbo.caixas
(
	id                BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	tipo              VARCHAR(255) NOT NULL,
    valor float NULL,
	situacao          BIGINT NOT NULL FOREIGN KEY(situacao) REFERENCES dbo.situacoes(id),
	data_operacao     DATETIMEOFFSET NOT NULL DEFAULT GETUTCDATE(),
	usuario_id        BIGINT NOT NULL FOREIGN KEY(usuario_id) REFERENCES dbo.usuarios(id)
);
INSERT INTO caixas (tipo, valor, situacao, usuario_id) VALUES ('Dinheiro', 1500.75, 1, 1);
INSERT INTO caixas (tipo, valor, situacao, usuario_id) VALUES ('Cartão de Crédito', 3200.00, 1, 1);
INSERT INTO caixas (tipo, valor, situacao, usuario_id) VALUES ('Cheque', NULL, 2, 1);
INSERT INTO caixas (tipo, valor, situacao, usuario_id) VALUES ('Transferência Bancária', 540.25, 1, 1);
INSERT INTO caixas (tipo, valor, situacao, usuario_id) VALUES ('Pix', 1287.60, 2, 1);
INSERT INTO caixas (tipo, valor, situacao, usuario_id) VALUES ('Dinheiro', 780.90, 1, 1);
INSERT INTO caixas (tipo, valor, situacao, usuario_id) VALUES ('Cartão de Débito', NULL, 2, 1);
INSERT INTO caixas (tipo, valor, situacao, usuario_id) VALUES ('Boleto', 999.99, 1, 1);
INSERT INTO caixas (tipo, valor, situacao, usuario_id) VALUES ('Crédito Parcelado', 4320.50, 2, 1);
INSERT INTO caixas (tipo, valor, situacao, usuario_id) VALUES ('Débito Automático', 275.30, 1, 1);

-- select * from dbo.caixas;