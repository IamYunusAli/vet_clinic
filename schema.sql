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


CREATE TABLE vets(
  id BIGSERIAL PRIMARY KEY NOT NULL,
  name varchar(255) NOT NULL,
  age int NOT NULL,
  date_of_graduation DATE NOT NULL
);

CREATE TABLE specializations(
vet_id INTEGER REFERENCES vets(id),
species_id INTEGER REFERENCES species(id)
);

CREATE TABLE visits(
  vet_id INTEGER REFERENCES vets(id),
  animal_id INTEGER REFERENCES animal(id),
  date_of_visit DATE NOT NULL
);

ALTER TABLE owners ADD COLUMN email VARCHAR(120);

CREATE INDEX email_asc ON owners (email ASC);

CREATE INDEX vet_id on visits (vet_id ASC);