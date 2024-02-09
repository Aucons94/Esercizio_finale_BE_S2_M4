-- 1 Visualizza elenco contravvenzioni effettuate in un determinato anno
CREATE PROCEDURE VerbalePerAnno ( @anno int)
AS
BEGIN
	SELECT *
    FROM Verbale
    WHERE YEAR(DataViolazione) = @Anno;
END
GO
