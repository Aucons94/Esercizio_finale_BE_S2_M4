-- 1 Conteggio dei verbali trascritti
-- SELECT COUNT(*) AS NrVerbaliTrascritti
-- FROM Verbale;

-- 2 Conteggio dei verbali trascritti raggruppati per anagrafe
-- SELECT Anagrafica.Cognome, Anagrafica.Nome, COUNT(Verbale.idverbale) AS NrVerbaliPerAnagrafe
-- FROM Anagrafica
-- INNER JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
-- GROUP BY Anagrafica.Cognome, Anagrafica.Nome;

-- 3 Conteggio dei verbali trascritti raggruppati per anagrafe
-- SELECT TipoViolazione.descrizione AS TipoViolazione, COUNT(Verbale.idverbale) AS NrVerbaliPerTipo
-- FROM Verbale
-- INNER JOIN TipoViolazione ON Verbale.idviolazione = TipoViolazione.idviolazione
-- GROUP BY TipoViolazione.descrizione;

-- 4 Totale dei punti decurtati per ogni anagrafe
-- SELECT Anagrafica.Cognome, Anagrafica.Nome, SUM(Verbale.DecurtamentoPunti) AS SommaPuntiDecurtati
-- FROM Anagrafica
-- LEFT JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
-- GROUP BY Anagrafica.Cognome, Anagrafica.Nome;

-- 5 Dati per tutte gli anagrafici residenti a Palermo
-- SELECT Anagrafica.Cognome, Anagrafica.Nome, Verbale.DataViolazione, Verbale.IndirizzoViolazione, Verbale.Importo, Verbale.DecurtamentoPunti
-- FROM Anagrafica
-- INNER JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
-- WHERE Anagrafica.Città = 'Palermo';

-- 6 Dati per le violazioni fatte tra febbraio 2009 e luglio 2009
-- SELECT Anagrafica.Cognome, Anagrafica.Nome, Verbale.IndirizzoViolazione, Verbale.DataViolazione, Verbale.Importo, Verbale.DecurtamentoPunti
-- FROM Anagrafica
-- INNER JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
-- WHERE Verbale.DataViolazione BETWEEN '2009-02-01' AND '2009-07-31';

-- 7 Totale importi per ogni anagrafico
-- SELECT Anagrafica.Cognome, Anagrafica.Nome, SUM(Verbale.Importo) AS TotaleImporti
-- FROM Anagrafica
-- INNER JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
-- GROUP BY Anagrafica.Cognome, Anagrafica.Nome;

-- 8 Visualizzazione di tutti gli anagrafici residenti a Palermo
-- SELECT *
-- FROM Anagrafica
-- WHERE Citta = 'Palermo';

-- 9 Fatta come Stored Procedure

-- 10 Conteggio delle violazioni contestate raggruppate per Nomativo dell'agente di polizia
-- SELECT NominativoAgente, COUNT(*) AS NumeroViolazioni
-- FROM Verbale
-- GROUP BY NominativoAgente;

-- 11 Dati per tutte le violazioni che superino i 5 punti di decurtamento
-- SELECT Anagrafica.Cognome, Anagrafica.Nome, Verbale.IndirizzoViolazione, Verbale.DataViolazione, Verbale.Importo, Verbale.DecurtamentoPunti
-- FROM Anagrafica
-- INNER JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
-- WHERE Verbale.DecurtamentoPunti > 5;

-- 12 Dati violazioni che superano i 400 euro
-- SELECT Anagrafica.Cognome, Anagrafica.Nome, Verbale.IndirizzoViolazione, Verbale.DataViolazione, Verbale.Importo, Verbale.DecurtamentoPunti
-- FROM Anagrafica
-- INNER JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
-- WHERE Verbale.Importo > 400.00;

