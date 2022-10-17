/*Queries that provide answers to the questions from all projects.*/

SELECT * from animal WHERE name LIKE '%mon';

SELECT name from animal WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

SELECT name from animal WHERE escape_attempts < 3 AND neutered = TRUE;

SELECT date_of_birth from animal WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name , escape_attempts from animal WHERE weight_kg > 10.5;

SELECT * from animal WHERE neutered = TRUE;

SELECT * from animal WHERE name != 'Gabumon';

SELECT * from animal Where weight_kg BETWEEN 10.5 AND  17.3;
