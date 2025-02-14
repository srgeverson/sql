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