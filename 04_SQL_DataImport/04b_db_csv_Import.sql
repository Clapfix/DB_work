/* CRUD create | Read | Update | Delete */

-- CREATE: siehe 04_...ALTER

SELECT * FROM boo.cats;

/* UPDATE --> Änderung(en) in bestehender Tab. */
UPDATE boo.cats SET cat_name = "Alonzo" WHERE id = 2;
UPDATE boo.cats SET fur_color = "black" WHERE id = 4;

/* REAT - SELECT : NEUE Ergebnistabelle wird erstellt */
# SELECT * FROM boo.cats; -- gesamte Tabelle
#SELECT cat_name FROM boo.cats;
#SELECT cat_name,age FROM boo.cats;
#SELECT cat_name AS "Katzen",age AS "Alter" FROM boo.cats;

/* Restriktion durch WHERE */
SELECT 
    cat_name AS "Katzen",
    age AS "Alter"
FROM boo.cats
#WHERE id = 1
#WHERE fur_color = "grey"
#WHERE fur_color = "alpinaweiß"
WHERE age >= 35
; 

/* Delete - DS löschen | Vorsicht !! */
#DELETE FROM boo.cats; -- ALLE DATEN SIND WEG !
DELETE FROM boo.cats WHERE id = 2;

SELECT * FROM boo.cats;