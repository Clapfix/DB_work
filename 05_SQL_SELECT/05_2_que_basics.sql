/* QUERIES Basic */

/*
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

-- Abfrage aller Spalten der Tab
#SELECT * FROM stocks.ccc

-- Begrenzung: Limit
-- Abfrage eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
-- Kombination aus mehreren Feldern in neues Feldern
-- hier mit Verknüpfung CONCAT() // String-Fkt.
SELECT
    ticker AS "SYM",
    price AS "Preis",
    c_name AS "Unternehmen",
    #industry AS "Branche"
    CONCAT(sector, " | ", industry) AS "Operations"
FROM stocks.ccc
Limit 10 -- X Zeilen ab 0
# LIMIT 200,10
;