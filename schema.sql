/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
  id BIGSERIAL PRIMARY KEY NOT Null,
  name varchar(255) NOT NULL,
  date_of_birth DATE NOT NULL,
  escape_attempts smallint ,
  neutered boolean ,
  weight_kg decimal ,
);

ALTER TABLE animals ADD species VARCHAR(255);

CREATE TABLE species(
  id BIGSERIAL PRIMARY KEY NOT NULL,
  name varchar(255) NOT NULL
);

CREATE TABLE owners(
  id BIGSERIAL PRIMARY KEY NOT NULL,
  full_name varchar(255) NOT NULL,
  age int NOT NULL
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD species_id BIGINT REFERENCES species(id);

ALTER TABLE animals ADD owners_id BIGINT REFERENCES owners(id);