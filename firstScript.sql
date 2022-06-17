INSERT INTO people (last_name, first_name, address, city)
VALUES ('Cadena','Sergio','calle 13','Bogota'),
	   ('Otalora','Alexander','carera 159','Cartagena');

select * from people;

update people
set first_name = 'Laura', city = 'Bogota'
where person_id = 2;

select * from people;

update people
set first_name = 'Alexander', city = 'Bogota'
where person_id = 1;
select * from people;

delete from people
where person_id = 1;

