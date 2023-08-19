/* Populate database with sample data. */

INSERT INTO public.animals (
id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'1'::integer, 'Agumon'::text, '2020-02-03'::date, '0'::integer, true::boolean, '10.23'::numeric)
 returning id;

INSERT INTO public.animals (
id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'1'::integer, 'Gabumon'::text, '2018-11-15'::date, '2'::integer, true::boolean, '8'::numeric)
 returning id;

INSERT INTO public.animals (
id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'1'::integer, 'Pikachu'::text, '2021-01-07'::date, '1'::integer, false::boolean, '15.04'::numeric)
 returning id;

INSERT INTO public.animals (
id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'1'::integer, 'Devimon'::text, '2017-05-12'::date, '5'::integer, true::boolean, '11'::numeric)
 returning id;


INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Charmander'::text, '2020-02-08'::date, '0'::integer, false::boolean, '-11'::numeric)
 returning id;

INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Plantmon'::text, '2021-11-15'::date, '2'::integer, true::boolean, '-5.7'::numeric)
 returning id;
 
INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Squirtle'::text, '1993-04-02'::date, '3'::integer, false::boolean, '-12.13'::numeric)
 returning id;

INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Angemon'::text, '2005-06-12'::date, '1'::integer, true::boolean, '-45'::numeric)
 returning id;

INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Boarmon'::text, '2005-06-07'::date, '7'::integer, true::boolean, '20.4'::numeric)
 returning id;

INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Blossom'::text, '1998-10-13'::date, '3'::integer, true::boolean, '17'::numeric)
 returning id;

INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Ditto'::text, '2022-05-14'::date, '4'::integer, true::boolean, '22'::numeric)
 returning id;


INSERT INTO public.vets (name, age, date_of_graduation) VALUES ('William Tatcher'::text, '45'::integer, '2000-04-23'::date)
 returning id;

INSERT INTO public.vets (name, age, date_of_graduation) VALUES ('Maisy Smith'::text, '26'::integer, '2019-01-17'::date)
 returning id;

INSERT INTO public.vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez'::text, '64'::integer, '1981-05-04'::date)
 returning id;

INSERT INTO public.vets (name, age, date_of_graduation) VALUES ('Jack Harkness'::text, '38'::integer, '2008-06-08'::date)
 returning id;


INSERT INTO public.specializations (species_id, vet_id) VALUES ('1000001'::integer, '3'::integer)
 returning id;

INSERT INTO public.specializations (species_id, vet_id) VALUES ('1000001'::integer, '4'::integer)
 returning id;

INSERT INTO public.specializations (species_id, vet_id) VALUES ('1000000'::integer, '1'::integer)
 returning id;

INSERT INTO public.specializations (species_id, vet_id) VALUES ('1000000'::integer, '3'::integer)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('1'::integer, '1'::integer, '2020-05-24'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('1'::integer, '3'::integer, '2020-07-22'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('2'::integer, '4'::integer, '2021-02-02'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('3'::integer, '2'::integer, '2020-01-05'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('3'::integer, '2'::integer, '2020-03-08'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('3'::integer, '2'::integer, '2020-05-14'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('4'::integer, '3'::integer, '2021-05-04'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('5'::integer, '4'::integer, '2021-02-24'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('7'::integer, '2'::integer, '2019-12-21'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('7'::integer, '1'::integer, '2020-08-10'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('7'::integer, '2'::integer, '2021-04-07'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('8'::integer, '3'::integer, '2019-09-29'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('9'::integer, '4'::integer, '2020-10-03'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('9'::integer, '4'::integer, '2020-11-04'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('10'::integer, '2'::integer, '2019-01-24'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('10'::integer, '2'::integer, '2019-05-15'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('10'::integer, '2'::integer, '2020-02-27'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('10'::integer, '2'::integer, '2020-08-03'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('11'::integer, '3'::integer, '2020-05-24'::date)
 returning id;

INSERT INTO public.visits (animal_id, vet_id, visit_date) VALUES ('11'::integer, '1'::integer, '2021-01-11'::date)
 returning id;
