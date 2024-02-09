-- 2 Punti decurtati in determinata data
CREATE PROCEDURE PuntiDecurtatiPerData (@DataViolazione DATE)
AS
BEGIN
    SELECT SUM(DecurtamentoPunti) AS TotalePuntiDecurtati
    FROM Verbale
    WHERE DataViolazione = @DataViolazione;
END
GO
