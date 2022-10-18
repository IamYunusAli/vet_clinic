/*Queries that provide answers to the questions from all projects.*/

SELECT * from animal WHERE name LIKE '%mon';

SELECT name from animal WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

SELECT name from animal WHERE escape_attempts < 3 AND neutered = TRUE;

SELECT date_of_birth from animal WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name , escape_attempts from animal WHERE weight_kg > 10.5;

SELECT * from animal WHERE neutered = TRUE;

SELECT * from animal WHERE name != 'Gabumon';

SELECT * from animal Where weight_kg BETWEEN 10.5 AND  17.3;


/* update the animal table*/

BEGIN;

UPDATE animal SET species = 'unspecified';

ROLLBACK;

/* update the animal table*/
BEGIN;

UPDATE animal SET species = 'digimon' WHERE name LIKE '%mon';

UPDATE animal SET species = 'pokemon' WHERE species is NULL;

COMMIT;

/* delete records from animal table and rollback*/

BEGIN;

DROP TABLE animal;

ROLLBACK;

SELECT * from animal;


-- update elements from animal table
BEGIN;

DELETE FROM animal WHERE date_of_birth > '2022-01-01';

SAVEPOINT YUNUS;

UPDATE animal SET weight_kg = weight_kg * -1;

ROLLBACK TO SAVEPOINT YUNUS;

UPDATE animal SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT;


-- Additional Queries

SELECT COUNT(*) FROM animal;

SELECT COUNT(*) FROM animal WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animal;

SELECT MAX(escape_attempts), neutered FROM animal GROUP BY neutered;

SELECT MIN(weight_kg), MAX(weight_kg) FROM animal;

SELECT AVG(weight_kg) FROM animal WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';