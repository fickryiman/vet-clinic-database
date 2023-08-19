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


SELECT V.animal_id, A.name, V.vet_id, VE.name, V.visit_date
	FROM public.visits V
	JOIN public.animals A
	ON V.animal_id = A.id
	JOIN public.vets VE
	ON V.vet_id = VE.id
	WHERE VE.name = 'William Tatcher'
	ORDER BY visit_date DESC
	LIMIT 1;

SELECT COUNT(DISTINCT V.animal_id) AS different_animal_seen
	FROM public.visits V
	WHERE V.vet_id = 3;

SELECT V.name, S.name AS specialization_name
	FROM public.specializations SV
	JOIN public.species S
	ON SV.species_id = S.id
	RIGHT JOIN public.vets V
	ON SV.vet_id = V.id;

SELECT A.name, VE.name, V.visit_date
	FROM public.visits V
	JOIN public.animals A
	ON V.animal_id = A.id
	JOIN public.vets VE
	ON V.vet_id = VE.id
	WHERE VE.name = 'Stephanie Mendez' AND (V.visit_date < '2020-08-30' AND V.visit_date > '2020-04-01');

SELECT A.name, count(V.animal_id) AS visit_count
	FROM public.animals A
	JOIN public.visits V ON A.id = V.animal_id
	GROUP BY A.name
	ORDER BY visit_count DESC
	LIMIT 1;

SELECT A.name, V.visit_date
	FROM public.visits V
	JOIN public.animals A
	ON V.animal_id = A.id
	JOIN public.vets VE
	ON V.vet_id = VE.id
	WHERE VE.name = 'Maisy Smith'
	ORDER BY visit_date ASC
	LIMIT 1;

SELECT A.name AS animal_name, A.date_of_birth, A.escape_attempts, A.neutered, A.weight_kg, VE.name AS vet_name, V.visit_date
	FROM public.visits V
	JOIN public.animals A
	ON V.animal_id = A.id
	JOIN public.vets VE
	ON V.vet_id = VE.id
	ORDER BY visit_date DESC
	LIMIT 5;

SELECT count(*) 
	FROM public.visits V
	JOIN public.animals A
	ON V.animal_id = A.id
	JOIN public.vets VE
	ON V.vet_id = VE.id
	LEFT JOIN specializations SP
	ON VE.id = SP.vet_id AND A.species_id = SP.species_id
	WHERE SP.vet_id IS NULL;

SELECT S.name
	FROM public.species S
	JOIN public.animals A
	ON S.id = A.species_id
	JOIN public.visits V
	ON A.id = V.animal_id
	JOIN public.vets VE
	ON V.vet_id = VE.id
	WHERE VE.name = 'Maisy Smith'
	GROUP BY S.name
	ORDER BY count(V.visit_date) DESC
	LIMIT 1;










