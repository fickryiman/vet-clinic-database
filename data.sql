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
