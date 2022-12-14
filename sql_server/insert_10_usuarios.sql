/************************************************************
 * Code formatted by SoftTree SQL Assistant � v11.0.35
 * Time: 20/06/2022 00:32:25
 ************************************************************/

--DESATIVAR IDENTITY TABELA
SET IDENTITY_INSERT usuarios ON

INSERT INTO usuarios (id, nome, email, senha)
VALUES
(1, 'Admin', 'geversonjosedesouza@gmail.com', '$2a$12$quPz3Wq3lHyY/0gJeCAgceNEb42fUjiuNqyWoKFNci/Cr7PGvk.yO'),
(2, 'Geverson', 'geversonjosedesouza@hotmail.com', '$2a$12$quPz3Wq3lHyY/0gJeCAgceNEb42fUjiuNqyWoKFNci/Cr7PGvk.yO');

--ATIVAR IDENTITY TABELA
SET IDENTITY_INSERT usuarios OFF

DECLARE @count INT = 9;
DECLARE @index INT = 0;
WHILE @index < @count
BEGIN
    INSERT INTO usuarios (nome, email, ativo)
    VALUES (
            NULL,
            CAST(('user' + CONVERT(VARCHAR(2), @index) + '@email.com') AS VARCHAR(220)), 
            CASE 
                WHEN @index % 2 = 0 THEN 1
                ELSE 0
            END
    )
    
    SET @index = @index + 1;
END  