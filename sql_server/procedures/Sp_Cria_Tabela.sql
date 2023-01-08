/************************************************************
 * Code formatted by SoftTree SQL Assistant © v11.0.35
 * Time: 17/12/2022 21:13:42
 ************************************************************/

CREATE PROCEDURE Sp_Cria_Tabela(@nome VARCHAR(100))
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @sql VARCHAR(MAX) = NULL;
		SET @sql = CONCAT(
		        'CREATE TABLE Tabela_Teste_',
		        @nome,
		        '(Id BIGINT PRIMARY KEY IDENTITY(1, 1), Dia DATETIME, Feriado VARCHAR(255))'
		    );
		EXEC (@sql);
		SELECT NULL  AS NumeroErro,
		       --ERROR_SEVERITY()   AS ErrorSeverity,
		       --ERROR_STATE()      AS ErrorState,
		       --ERROR_PROCEDURE()  AS ErrorProcedure,
		       --ERROR_LINE()       AS ErrorLine,
		       NULL  AS MensagemDeErro;
	END TRY  
	BEGIN CATCH
		SELECT ERROR_NUMBER()   AS NumeroErro,
		       --ERROR_SEVERITY()   AS ErrorSeverity,
		       --ERROR_STATE()      AS ErrorState,
		       --ERROR_PROCEDURE()  AS ErrorProcedure,
		       --ERROR_LINE()       AS ErrorLine,
		       ERROR_MESSAGE()  AS MensagemDeErro;
	END CATCH
END
GO


