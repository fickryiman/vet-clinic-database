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
SELECT * FROM public.animals;
ROLLBACK TRANSACTION;

BEGIN TRANSACTION;
UPDATE public.animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE public.animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT TRANSACTION;
SELECT * FROM public.animals;
DELETE FROM public.animals;
SELECT * FROM public.animals;
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
SELECT MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight FROM public.animals GROUP BY species;
SELECT AVG(escape_attempts) FROM public.animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';


SELECT A.id, name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id, full_name
	FROM public.animals A JOIN public.owners O ON A.owner_id = O.id
	WHERE O.full_name = 'Melody Pond';

SELECT A.id, A.name, date_of_birth, escape_attempts, neutered, weight_kg, owner_id, species_id, S.name
	FROM public.animals A JOIN public.species S ON A.species_id = S.id
	WHERE S.name = 'Pokemon';

SELECT full_name, A.name FROM public.owners O LEFT JOIN public.animals A ON O.id = A.owner_id;

SELECT species_id, COUNT(*) AS animal_count FROM public.animals GROUP BY species_id;

SELECT A.id, A.name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, S.name AS species_name, owner_id, O.full_name AS owner_name
	FROM public.animals A JOIN public.owners O ON A.owner_id = O.id JOIN public.species S ON A.species_id = S.id
	WHERE O.full_name = 'Jennifer Onwell' AND S.name = 'Digimon';

SELECT A.id, A.name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, S.name AS species_name, owner_id, O.full_name AS owner_name
	FROM public.animals A JOIN public.owners O ON A.owner_id = O.id JOIN public.species S ON A.species_id = S.id
	WHERE O.full_name = 'Dean Winchester' AND A.escape_attempts = 0;

SELECT O.full_name AS owner_name, COUNT(A.owner_id) AS animal_count
FROM public.animals A
JOIN public.owners O ON A.owner_id = O.id
GROUP BY O.full_name
ORDER BY animal_count DESC
LIMIT 1;
