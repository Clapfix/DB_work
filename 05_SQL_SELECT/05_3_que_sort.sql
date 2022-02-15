/* QUERIES Sortierung */

-- ASC / DESC

SELECT
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Preis",
    no_yrs AS "Jahre ++",
    CONCAT(sector, " | ", industry) AS "Operations"
FROM stocks.ccc
-- Sortierung
ORDER BY ticker ASC  -- SYM, alphabetisch, aufsteigend
#ORDER BY ticker DESC  -- SYM, alphabetisch, absteigend

#ORDER BY price ASC -- Kurs, beginnend mit der günstigsten Aktie
#ORDER BY price DESC -- Kurs, beginnend mit der teuersten Aktie
#ORDER BY no_yrs DESC -- Aktien mit der längsten Div.-Historie

#ORDER BY sector DESC, industry ASC -- Kombination ASC / DESC alphabetisch
#ORDER BY no_yrs DESC, sector ASC -- Kombination ASC / DESC alphabet. / numerisch

-- Begrenzung
Limit 40
;