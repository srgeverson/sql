/************************************************************
 * Code formatted by SoftTree SQL Assistant © v11.0.35
 * Time: 24/08/2022 15:48:42
 ************************************************************/

DECLARE @tamanho INT = 8;
DECLARE @caracteres CHAR(8) = '12345678';
DECLARE @inicio INT = 1;
DECLARE @soma INT = 0;
DECLARE @calculo INT = 0;

WHILE @inicio <= @tamanho
BEGIN
    SET @calculo = (
            SUBSTRING(@caracteres, @inicio, 1) * (@tamanho + 2 - @inicio)
        );
    SET @soma = @soma + @calculo;
    --SELECT SUBSTRING(@caracteres, @inicio, 1) AS Valor, (@tamanho + 2 - @inicio) AS Num, @calculo AS Calc, @soma AS soma;
    SET @inicio = @inicio + 1;
END;
SELECT @soma%11,
       CASE 
            WHEN @soma % 11 = 11 OR @soma % 11 = 10 THEN 0
            ELSE @soma % 11
       END Rest