/* USER DB Vers. 1 */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name    VARCHAR(20) NOT NULL UNIQUE,
    user_pwd     VARCHAR(40) NOT NULL,
    family_name  VARCHAR(20) NOT NULL,
    first_name   VARCHAR(20) NOT NULL
    );
    
/* Struktur */
DESCRIBE boo.users;

/* Daten */
INSERT INTO 
    boo.users (user_name, user_pwd, family_name, first_name) 
VALUES 
    ("max",SHA1("1234"),"Mütze","Max"),
    ("maxine",SHA1("#7xD0"),"Mütze","Maxine"),
    ("maxl",SHA1("user1234"),"Mütze","Max")
;


/* Inhalte : Ergebniszabelle */
SELECT * FROM boo.users;

/* Änderungen an bestimmten Tabellen */
ALTER TABLE 
    boo.users
ADD
    user_plz INT (5) NOT NULL DEFAULT 00000
;

/* Struktur */
DESCRIBE boo.users;

/* Update von Daten */
UPDATE boo.users SET user_plz = 70367 WHERE first_name = "max";
UPDATE boo.users SET user_plz = 70462 WHERE id = 2;

/* Inhalte : Ergebniszabelle */
SELECT * FROM boo.users;




