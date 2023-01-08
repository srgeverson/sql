/************************************************************
 * Code formatted by SoftTree SQL Assistant © v11.0.35
 * Time: 11/12/2022 16:52:42
 ************************************************************/

CREATE OR ALTER FUNCTION fn_retorna_palavra_com_espacos
(
	@palavra VARCHAR(MAX) = NULL
)
RETURNS VARCHAR 
(
	MAX
)
AS
BEGIN
	DECLARE @novaPalavra VARCHAR(MAX) = '';
	DECLARE @contator INT = 1;
	DECLARE @tamanho INT = LEN(@palavra);
	DECLARE @letra CHAR(1) = NULL;
	
	WHILE @contator <= @tamanho
	BEGIN
	    SET @letra = SUBSTRING(@palavra, @contator, 1);
	    --PRINT CONCAT('->', @letra);
	    IF UPPER(@letra) = @letra COLLATE LATIN1_GENERAL_CS_AI
	    BEGIN
	        --PRINT CONCAT('É maior', @letra);
	        SET @novaPalavra = CONCAT(@novaPalavra, SPACE(1), @letra)
	    END
	    ELSE
	    BEGIN
	        SET @novaPalavra = CONCAT(@novaPalavra, @letra)
	    END
	    
	    SET @contator = @contator + 1;
	END;
	
	RETURN @novaPalavra;
END
GO



