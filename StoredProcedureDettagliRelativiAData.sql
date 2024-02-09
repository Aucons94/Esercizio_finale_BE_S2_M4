-- 9 Dati relativi ad una certa data
CREATE PROCEDURE DettagliRelativiAData (@DataViolazione DATE)
AS
BEGIN 
    SELECT DataViolazione, Importo, DecurtamentoPunti
    FROM Verbale
    WHERE DataViolazione = @DataViolazione;
END
GO
