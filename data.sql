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
