
-- QUERY

-- 1 Visualizzare codice fiscale, cognome e nome degli utenti che hanno sottoscritto un abbonamento nell'anno precedente a quello corrente e la spesa totale di ciascuno, ordinati in base alla spesa totale (decrescente).

DROP VIEW IF EXISTS Spesa_totale_utenti;
CREATE VIEW Spesa_totale_utenti AS 
SELECT U.CF, U.Cognome, U.Nome, SUM(Tf.Prezzo) AS Spesa
FROM Utente U JOIN Tessera T ON U.Tessera = T.Id_tessera 
    JOIN Abbonamento A on A.Tessera = T.Id_tessera
    JOIN Tariffa Tf 
WHERE YEAR(A.Data_Inizio) = (YEAR(NOW())-1)
    AND Tf.Tipo = A.Tipo_tariffa
    AND Tf.Periodo = A.Periodo_tariffa
    AND Tf.Linea = A.Linea_tariffa
GROUP BY U.CF
ORDER BY Spesa DESC;

SELECT * FROM Spesa_totale_utenti;

-- 2 Per ogni tariffa mostrare il numero degli utenti che ne hanno usufruito e la spesa totale, ordinate in base al numero degli utente (decrescente).

DROP VIEW IF EXISTS Utenti_tariffa;
CREATE VIEW Utenti_tariffa AS
SELECT T.Tipo, T.Periodo, T.Linea, COUNT(A.Tessera) AS Totale_utenti, SUM(T.Prezzo) AS Totale_spesa
FROM Abbonamento A JOIN Tariffa T
WHERE T.Tipo = A.Tipo_tariffa
    AND T.Periodo = A.Periodo_tariffa
    AND T.Linea = A.Linea_tariffa
GROUP BY T.Tipo, T.Periodo, T.Linea
ORDER BY Totale_utenti DESC, Totale_spesa DESC ;

SELECT * FROM Utenti_tariffa;

-- 3 Per ogni biglietteria che guadagna più di 100 visualizzare il numero di biglietti emanati, abbonamenti sottoscritti e totale soldi incassati, ordinati in base alle entrate (decrescente).

DROP VIEW IF EXISTS Info_biglietteria;
CREATE VIEW Info_biglietteria AS
SELECT B.Indirizzo, B.Comune, B.Nome, COUNT(Bt.Id_biglietto) AS Num_Biglietti, COUNT(A.Id_abbonamento) AS Num_Abbonamenti, (SUM(Bt.Prezzo) + SUM(Tf.Prezzo)) AS Totale_entrate
FROM Biglietteria B JOIN Biglietto Bt
    JOIN Abbonamento A 
    JOIN Tariffa Tf 
WHERE B.Indirizzo = Bt.Indirizzo_biglietteria
    AND B.Comune = Bt.Comune_biglietteria
    AND Bt.Tipo = 'fisico'
    AND B.Indirizzo = A.Indirizzo_biglietteria
    AND B.Comune = A.Comune_biglietteria
    AND A.Tipo = 'fisico'
    AND Tf.Tipo = A.Tipo_tariffa
    AND Tf.Periodo = A.Periodo_tariffa
    AND Tf.Linea = A.Linea_tariffa
GROUP BY B.Indirizzo, B.Comune
HAVING Totale_entrate > 100
ORDER BY Totale_entrate DESC ;

SELECT * FROM Info_biglietteria;

-- 4 Visualizzare per ogni anno in ordine crescente il numero di biglietti venduti, relativi guadagni, il numero degli abbonamenti sottoscritti e il relativo guadagno.

DROP VIEW IF EXISTS Biglietti_tot_fisici;
CREATE VIEW Biglietti_tot_fisici AS 
SELECT YEAR(B.Data_emissione) AS Anno, COUNT(*) AS Num_bf, SUM(B.Prezzo) AS Tot_bf
FROM Biglietto B
WHERE B.Tipo = 'fisico'
GROUP BY Anno ;

DROP VIEW IF EXISTS Biglietti_tot_online;
CREATE VIEW Biglietti_tot_online AS 
SELECT YEAR(B.Data_emissione) AS Anno, COUNT(*) AS Num_bo, ROUND(SUM(B.Prezzo * (100 - B.Sconto) / 100),2) AS Tot_bo
FROM Biglietto B
WHERE B.Tipo = 'online' 
GROUP BY Anno ;

DROP VIEW IF EXISTS Abbonamenti_tot_fisici;
CREATE VIEW Abbonamenti_tot_fisici AS 
SELECT YEAR(A.Data_sottoscrizione) AS Anno, COUNT(*) AS Num_af, SUM(Tf.Prezzo) AS Tot_af
FROM Abbonamento A JOIN Tariffa Tf
WHERE A.Tipo = 'online' 
    AND Tf.Tipo = A.Tipo_tariffa
    AND Tf.Periodo = A.Periodo_tariffa
    AND Tf.Linea = A.Linea_tariffa 
GROUP BY Anno ;

DROP VIEW IF EXISTS Abbonamenti_tot_online;
CREATE VIEW Abbonamenti_tot_online AS 
SELECT YEAR(A.Data_sottoscrizione) AS Anno, COUNT(*) AS Num_ao, ROUND(SUM(Tf.Prezzo * (100 - A.Sconto) / 100),2) AS Tot_ao
FROM Abbonamento A JOIN Tariffa Tf
WHERE A.Tipo = 'online' 
    AND Tf.Tipo = A.Tipo_tariffa
    AND Tf.Periodo = A.Periodo_tariffa
    AND Tf.Linea = A.Linea_tariffa 
GROUP BY Anno ;

DROP VIEW IF EXISTS Info_annuale;
CREATE VIEW Info_annuale AS
SELECT Btf.Anno, (Btf.Num_bf + Bto.Num_bo) AS Num_biglietti, SUM(Btf.Tot_bf + Bto.Tot_bo) AS Entrate_biglietti, (Atf.Num_af + Ato.Num_ao) AS Num_abbonamenti, SUM(Atf.Tot_af + Ato.Tot_ao) AS Entrate_abbonamenti
FROM ((Biglietti_tot_fisici Btf JOIN Biglietti_tot_online Bto ON Btf.Anno = Bto.Anno)
    JOIN Abbonamenti_tot_fisici Atf ON Btf.Anno = Atf.Anno) JOIN Abbonamenti_tot_online Ato ON Btf.Anno = Ato.Anno
GROUP BY Btf.Anno
ORDER BY Btf.Anno;

SELECT * FROM Info_annuale;

-- 5 Visualizzare l’elenco degli impiegati (non responsabili) che hanno lavorato più di 10 anni e che guadagnano meno della media totale degli impiegati.

DROP VIEW IF EXISTS Responsabile;
CREATE VIEW Responsabile AS
SELECT B.CF_responsabile AS CF, I.Nome AS Nome, I.Cognome AS Cognome, I.Stipendio AS Stipendio
FROM Biglietteria B JOIN Impiegato I ON B.CF_responsabile = I.CF ;

DROP VIEW IF EXISTS Impiegati_pluridecennali;
CREATE VIEW Impiegati_pluridecennali AS
SELECT I.CF, I.Nome, I.Cognome, YEAR(NOW()) - YEAR(I.Data_inizio) as Tot_anni, I.Stipendio
FROM Impiegato I
WHERE I.CF not in (SELECT CF FROM Responsabile)
GROUP BY I.CF
HAVING Tot_anni >= 10
    AND I.Stipendio < (SELECT AVG(Stipendio) FROM Impiegato Where CF NOT IN (SELECT CF FROM Responsabile))
ORDER BY Stipendio DESC;

SELECT * FROM Impiegati_pluridecennali;

-- 6 Visualizzare per ogni tipo, periodo e linea il totale dei soldi incassati dagli abbonamenti comprati fisicamente e da quelli sottoscritti online.

DROP VIEW IF EXISTS Info_tipo;
CREATE VIEW Info_tipo AS
SELECT T.Tipo, T.Periodo, T.Linea, T.Prezzo, ROUND(T.Prezzo * ((100 - AVG(A.Sconto)) / 100),2) AS Prezzo_scontato
FROM Tariffa T, Abbonamento A
WHERE T.Tipo = A.Tipo_tariffa
    AND T.Periodo = A.Periodo_tariffa
    AND T.Linea = A.Linea_tariffa
    AND A.Sconto > 0
GROUP BY T.Tipo, T.Periodo, T.Linea
ORDER BY Prezzo_scontato DESC;

SELECT * FROM Info_tipo;

-- 7 Visualizzare il numero di acquisti effettuati online e fisicamente con la relativa percentuale.

DROP VIEW IF EXISTS Info_acquisti;
CREATE VIEW Info_acquisti AS
SELECT (Ato.Num_ao + Bto.Num_bo) AS Num_acquisti_online, 
       (Atf.Num_af + Btf.Num_bf) AS Num_acquisti_fisici,
       ROUND((100*(Ato.Num_ao + Bto.Num_bo)/((Ato.Num_ao + Bto.Num_bo) + (Atf.Num_af + Btf.Num_bf))),2) AS Percentuale_online,
       ROUND((100*(Atf.Num_af + Btf.Num_bf)/((Ato.Num_ao + Bto.Num_bo) + (Atf.Num_af + Btf.Num_bf))),2) AS Percentuale_fisici
FROM Biglietti_tot_fisici Btf, Biglietti_tot_online Bto, Abbonamenti_tot_fisici Atf, Abbonamenti_tot_online Ato
LIMIT 1;

SELECT * FROM Info_acquisti;

-- 8 Visualizzare CF, nome, cognome, data di inizio contratto e lo stipendio degli impiegati che guadagnano piu di 2000 ed il cui nome finisce con 'a', ordinati in base allo stipendio (decrescente).

DROP VIEW IF EXISTS Impiegati_guadagno_a;
CREATE VIEW Impiegati_guadagno_a AS
SELECT CF, Nome, Cognome, Data_inizio, Stipendio
FROM Impiegato
WHERE Nome LIKE '%a' AND Stipendio > 2000
ORDER BY Stipendio DESC;

SELECT * FROM Impiegati_guadagno_a;

-- 9 Creare una vista che rappresenta l’elenco di tutti gli abbonamenti non più validi e rispettivi utenti

DROP VIEW IF EXISTS Abbonamenti_scaduti;
CREATE VIEW Abbonamenti_scaduti AS
SELECT U.CF AS CF, U.Tessera AS Tessera, A.Id_abbonamento AS Id_abbonamento
FROM Utente U JOIN Tessera T ON U.Tessera = T.Id_tessera 
    JOIN Abbonamento A on A.Tessera = T.Id_tessera
WHERE date_add(A.Data_inizio, INTERVAL A.Periodo_tariffa DAY) <  DATE(NOW());

SELECT * FROM Abbonamenti_scaduti;

-- 10 Creare una vista che rappresenta l’elenco di tutti gli abbonamenti più validi e rispettivi utenti

DROP VIEW IF EXISTS Abbonamenti_validi;
CREATE VIEW Abbonamenti_validi AS
SELECT U.CF AS CF, U.Tessera AS Tessera, A.Id_abbonamento AS Id_abbonamento
FROM Utente U JOIN Tessera T ON U.Tessera = T.Id_tessera 
    JOIN Abbonamento A on A.Tessera = T.Id_tessera
WHERE A.Id_abbonamento NOT IN (SELECT Id_abbonamento
                               FROM Abbonamenti_scaduti);

SELECT * FROM Abbonamenti_validi;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- PROCEDURE

-- 1 Aumentare di del 50% lo stipendio di tutti gli impiegati che lavorano da almeno 10 anni e che hanno uno stipendio minore di un intero x preso in input

DROP PROCEDURE IF EXISTS Aumenta_stipendio;
DELIMITER ;;
CREATE PROCEDURE Aumenta_stipendio(x_stipendio INT)
BEGIN
    UPDATE Impiegato
    SET Stipendio = Stipendio * 1.5
    WHERE Stipendio < x_stipendio AND (YEAR(NOW()) - YEAR(Data_inizio)) >= 10;
END ;;   

SELECT * FROM Impiegato WHERE (YEAR(NOW()) - YEAR(Data_inizio)) >= 10 order by Stipendio

        
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- FUNZIONI

-- 1 Dato in input il nome di una linea ritorna il numero di tratte che passano per una determinata linea

DROP FUNCTION IF EXISTS Conta_linee_data_fermata ;
DELIMITER $$
CREATE FUNCTION Conta_linee_data_fermata (Linea_input VARCHAR(15)) RETURNS INT
BEGIN
    DECLARE N_linee INT;
    SELECT COUNT(*) INTO N_linee
    FROM Tratta T JOIN Linea L 
    WHERE T.Linea = L.Id_linea AND L.Nome_linea = Linea_input;  
    RETURN N_linee;
END$$
DELIMITER ;

-- 2 Dato in input l’id di un biglietto, ritorna TRUE se il biglietto preso in input è ancora valido, altrimenti ritorna FALSE

DROP VIEW IF EXISTS Biglietti_validi;
CREATE VIEW Biglietti_validi AS 
SELECT *
FROM Biglietto
WHERE NOW() < date_add(Data_emissione, INTERVAL Validita HOUR);

DROP FUNCTION IF EXISTS Validatore_biglietto ;
DELIMITER $$
CREATE FUNCTION Validatore_biglietto (Biglietto_valido VARCHAR(15)) RETURNS BOOLEAN
BEGIN
    IF EXISTS (SELECT * FROM Biglietti_validi WHERE Id_biglietto = Biglietto_valido) 
    THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END$$
DELIMITER ;

-- 3 Dato in input l’id di un abbonamento, ritorna TRUE se l’abbonamento preso in input è ancora valido, altrimenti ritorna FALSE

DROP VIEW IF EXISTS Abbonamenti_validi;
CREATE VIEW Abbonamenti_validi AS 
SELECT *
FROM Abbonamento 
WHERE NOW() < date_add(Data_inizio, INTERVAL Periodo_tariffa DAY);

DROP FUNCTION IF EXISTS Validatore_abbonamento ;
DELIMITER $$
CREATE FUNCTION Validatore_abbonamento (Abbonamento_valido VARCHAR(15)) RETURNS BOOLEAN
BEGIN
    IF EXISTS (SELECT * FROM Abbonamenti_validi WHERE Id_abbonamento = Abbonamento_valido) 
    THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END$$
DELIMITER ;

-- 4 Ritorna TRUE se, l’abbonamento preso in input non è scaduto e se la fermata attuale è compresa nella tariffa, altrimenti ritorna FALSE.

DROP VIEW IF EXISTS Abbonamenti_validi;
CREATE VIEW Abbonamenti_validi AS 
SELECT *
FROM Abbonamento 
WHERE NOW() < date_add(Data_inizio, INTERVAL Periodo_tariffa DAY);

DROP VIEW IF EXISTS Linea_Fermate;
CREATE VIEW Linea_Fermate AS
SELECT T.Linea AS Linea, F.Indirizzo AS Indirizzo, F.Comune AS Comune 
FROM Tratta T, Linea L, Fermata F
WHERE T.Linea = L.Id_linea 
    AND (F.Indirizzo = L.Indirizzo_partenza
    AND F.Comune = L.Comune_partenza)
    OR (F.Indirizzo = L.Indirizzo_arrivo
    AND F.Comune = L.Comune_arrivo)
GROUP BY Linea, Indirizzo, Comune;

DROP FUNCTION IF EXISTS Validatore_abbonamento_fermata ;
DELIMITER $$
CREATE FUNCTION Validatore_abbonamento_fermata (Abbonamento_valido VARCHAR(15), Indirizzo_attuale VARCHAR(20), Comune_attuale VARCHAR(15) ) RETURNS BOOLEAN
BEGIN
    DECLARE Linea_abbonamento VARCHAR(15);
    IF EXISTS (SELECT Linea_tariffa = Linea_abbonamento FROM Abbonamenti_validi WHERE Id_abbonamento = Abbonamento_valido) 
    THEN
        IF (SELECT * FROM Linea_Fermate WHERE Linea_abbonamento = Linea AND Indirizzo_attuale = Indirizzo AND Comune_attuale = Comune)
        THEN
            RETURN TRUE;
        ELSE
            RETURN FALSE;
        END IF;
    ELSE
        RETURN FALSE;
    END IF;
END$$
DELIMITER ;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- TRIGGER

-- 1 Alla modifica dello stipendio di un impiegato che non è un responsabile, verifica che il nuovo valore non superi quello dei responsabili

SELECT * FROM Impiegato WHERE CF = 'FYIXM0W9K6VNUKM9';

DROP TRIGGER IF EXISTS Controllo_stipendio_impiegati;
DELIMITER ;;
CREATE TRIGGER Controllo_stipendio_impiegati BEFORE UPDATE ON Impiegato
FOR EACH ROW
BEGIN
    DECLARE MAX_Stipendio INTEGER;
    SELECT MIN(Stipendio) FROM Responsabile INTO MIN_Stipendio_Responsabile;
    IF(NEW.Stipendio > MIN_Stipendio_Responsabile)
    THEN   
        RESIGNAL;
    END IF;
END;
;;
DELIMITER ;

UPDATE Impiegato SET Stipendio = 500 WHERE CF = 'FYIXM0W9K6VNUKM9';
UPDATE Impiegato SET Stipendio = 10000 WHERE CF = 'FYIXM0W9K6VNUKM9';

SELECT * FROM Impiegato WHERE CF = 'FYIXM0W9K6VNUKM9';

-- 2 Dopo l’inserimento di una nuova biglietteria cerca l’impiegato non responsabile che lavora da più tempo e lo promuove a responsabile in essa, se nella biglietteria in cui lavora ci sono almeno due impiegati

DROP TRIGGER IF EXISTS Nuovo_responsabile;

DELIMITER ;;
CREATE TRIGGER Nuovo_responsabile BEFORE INSERT ON Biglietteria
FOR EACH ROW
BEGIN
    SET New.CF_responsabile = (SELECT CF 
                               FROM Impiegato 
                               WHERE CF NOT IN (SELECT CF FROM Responsabile) 
                                    AND Data_inizio <= (SELECT MIN(Data_inizio) FROM Impiegato)
                                    AND (SELECT count(I.CF) 
                                         FROM Biglietteria B, Impiegato I
                                         WHERE I.Indirizzo_biglietteria = B.Indirizzo AND I.Comune_biglietteria = B.comune) >= 2);
END;
;;
DELIMITER ;

DELETE FROM Biglietteria WHERE Telefono = '3289018410';
INSERT INTO Biglietteria (Indirizzo, Comune, Nome, Telefono) VALUES('San Dona di Piave', 'san luigi gonzaga via', 'biglietteria_20', '3289018410');

SELECT * FROM Biglietteria WHERE Telefono = '3289018410';
