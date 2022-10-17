/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
  id BIGSERIAL PRIMARY KEY NOT Null,
  name varchar(255) NOT NULL,
  date_of_birth DATE NOT NULL,
  escape_attempts smallint ,
  neutered boolean ,
  weight_kg decimal ,
);
