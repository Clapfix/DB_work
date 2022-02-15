/* USER DB Vers. 1 */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) NOT NULL UNIQUE,
    family_name VARCHAR(20) NOT NULL,
    first_name VARCHAR(20) NOT NULL
    );
    
/* Struktur */
DESCRIBE boo.users;

/* Daten */
INSERT INTO boo.users (user_name, family_name, first_name) VALUES ("Maxy","Mütze","Max");
INSERT INTO boo.users (user_name, family_name, first_name) VALUES ("Mäxchen","Mütze","Maxine"); 

INSERT INTO boo.users (user_name, family_name, first_name) VALUES ("Maxl","Mütze","Max");

/* Inhalte : Ergebniszabelle */
SELECT * FROM boo.users;

