/*Queries that provide answers to the questions from all projects.*/
SELECT * FROM animals WHERE name = 'Luna';

SELECT * FROM public.animals WHERE name LIKE '%mon';

SELECT * FROM public.animals
WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

SELECT * FROM public.animals
WHERE neutered = 'true' AND escape_attempts < 3;

SELECT name, date_of_birth FROM public.animals
WHERE name in ('Agumon', 'Pikachu');

SELECT name, escape_attempts FROM public.animals
WHERE weight_kg > 10.5;

SELECT * FROM public.animals
WHERE neutered = 'true';

SELECT * FROM public.animals
WHERE name not in ('Gabumon');

SELECT * FROM public.animals
WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;


BEGIN TRANSACTION;
ALTER TABLE public.animals RENAME species TO unspecified;
ROLLBACK TRANSACTION;

BEGIN TRANSACTION;
UPDATE public.animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE public.animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT TRANSACTION;
DELETE FROM public.animals;
ROLLBACK TRANSACTION;

BEGIN TRANSACTION;
DELETE FROM public.animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT delete_animals;
UPDATE public.animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SAVEPOINT delete_animals;
UPDATE public.animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT TRANSACTION;


SELECT COUNT(*) FROM public.animals;
SELECT COUNT(*) FROM public.animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM public.animals;
SELECT neutered, escape_attempts FROM public.animals ORDER BY escape_attempts DESC LIMIT 1;
SELECT MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight FROM public.animals;
SELECT AVG(escape_attempts) FROM public.animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';

