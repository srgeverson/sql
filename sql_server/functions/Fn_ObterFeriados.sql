CREATE FUNCTION dbo.Fn_ObterFeriados(@ano INT = NULL)
    RETURNS @Feriado TABLE (Dia DATE, Feriado VARCHAR(100))
AS
BEGIN
     DECLARE @pascoa SMALLDATETIME;
     DECLARE @Dia INT;
     DECLARE @mes INT;
     DECLARE @anoPascoa INT;
  
     IF(@ano IS NULL)
     BEGIN
         SET @ano = DATEPART(YEAR, GETDATE());
     END
  
     SET @pascoa = dbo.Fn_ObterDataPascoa(@ano);
     SET @Dia = DATEPART(DAY, @pascoa);
     SET @mes = DATEPART(MONTH, @pascoa);
     SET @anoPascoa = DATEPART(YEAR, @pascoa);
  
     INSERT INTO @Feriado (Dia, Feriado) VALUES(@pascoa, 'Pascoa');
     INSERT INTO @Feriado (Dia, Feriado) VALUES(CAST('1-1-' + CAST(@anoPascoa AS VARCHAR) AS DATE), 'Confraternização Universal');
     INSERT INTO @Feriado (Dia, Feriado) VALUES(CAST(CAST(@anoPascoa AS VARCHAR) + '-4-21' AS DATE), 'Tiradentes');
     INSERT INTO @Feriado (Dia, Feriado) VALUES(CAST(CAST(@anoPascoa AS VARCHAR) + '-5-1' AS DATE), 'Dia do Trabalhador');
     INSERT INTO @Feriado (Dia, Feriado) VALUES(CAST(CAST(@anoPascoa AS VARCHAR) + '-9-7' AS DATE), 'Dia da Independência');
     INSERT INTO @Feriado (Dia, Feriado) VALUES(CAST(CAST(@anoPascoa AS VARCHAR) + '-10-12' AS DATE), 'N. S. Aparecida');
     INSERT INTO @Feriado (Dia, Feriado) VALUES(CAST(CAST(@anoPascoa AS VARCHAR) + '-11-2' AS DATE), 'Todos os santos');
     INSERT INTO @Feriado (Dia, Feriado) VALUES(CAST(CAST(@anoPascoa AS VARCHAR) + '-11-15' AS DATE), 'Proclamação da republica');
     INSERT INTO @Feriado (Dia, Feriado) VALUES(CAST(CAST(@anoPascoa AS VARCHAR) + '-12-25' AS DATE), 'Natal');
     INSERT INTO @Feriado (Dia, Feriado) VALUES(DATEADD(DAY, 60, @pascoa), 'Corpus Christi');
     INSERT INTO @Feriado (Dia, Feriado) VALUES(DATEADD(DAY, -2, @pascoa), '6º feira Santa');
     INSERT INTO @Feriado (Dia, Feriado) VALUES(DATEADD(DAY, -47, @pascoa), '3º feria Carnaval');
     INSERT INTO @Feriado (Dia, Feriado) VALUES(DATEADD(DAY, -48, @pascoa), '2º feria Carnaval');
  
     RETURN;
END