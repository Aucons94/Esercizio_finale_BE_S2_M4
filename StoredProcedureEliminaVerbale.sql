-- 3 Elimina Verbale
CREATE PROCEDURE EliminaVerbale (@IdVerbale INT)
AS
BEGIN
	DELETE FROM Verbale
    WHERE idverbale = @IdVerbale;
END
GO
