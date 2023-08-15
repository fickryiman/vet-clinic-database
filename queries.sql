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
