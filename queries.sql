/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon';

SELECT name from animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

SELECT name from animals WHERE escape_attempts < 3 AND neutered = TRUE;

SELECT date_of_birth from animals WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name , escape_attempts from animals WHERE weight_kg > 10.5;

SELECT * from animals WHERE neutered = TRUE;

SELECT * from animals WHERE name != 'Gabumon';

SELECT * from animals Where weight_kg BETWEEN 10.5 AND  17.3;


/* update the animals table*/

BEGIN;

UPDATE animals SET species = 'unspecified';

ROLLBACK;

/* update the animals table*/
BEGIN;

UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';

UPDATE animals SET species = 'pokemon' WHERE species is NULL;

COMMIT;

/* delete records from animals table and rollback*/

BEGIN;

DROP TABLE

ROLLBACK;

SELECT * from animals;


-- update elements from animals table
BEGIN;

DELETE FROM animals WHERE date_of_birth > '2022-01-01';

SAVEPOINT YUNUS;

UPDATE animals SET weight_kg = weight_kg * -1;

ROLLBACK TO SAVEPOINT YUNUS;

UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT;


-- Additional Queries

SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animals;

SELECT MAX(escape_attempts), neutered FROM animals GROUP BY neutered;

SELECT MIN(weight_kg), MAX(weight_kg) FROM animals;

SELECT AVG(weight_kg) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';


-- writing queries using JOIN

SELECT animals.name FROM animals JOIN owners ON animals.owners_id = owners.id WHERE owners.full_name = 'Melody Pond';

SELECT * FROM animals JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';

SELECT animals.name, owners.full_name FROM animals RIGHT JOIN owners ON animals.owners_id = owners.id;

SELECT species.name, COUNT(animals.species_id) FROM animals JOIN species ON species.id = animals.species_id GROUP BY species.name;

SELECT animals.name from animals JOIN owners ON owners.id = animals.owners_id JOIN species on species.id = animals.species_id WHERE animals.species_id = '2' AND animals.owners_id = '2';

SELECT animals.name from animals JOIN owners ON owners.id = animals.owners_id WHERE animals.escape_attempts = '0' AND animals.owners_id = '5';

SELECT full_name, COUNT(owners_id) FROM owners JOIN animals on owners.id = animals.owners_id GROUP BY full_name ORDER BY COUNT (owners_id) desc limit 1;
