create table borrador(
	person_id int,
    last_name varchar(255),
    first_name varchar(255),
    address varchar(255),
    city varchar(255) 
);

select * from borrador;


insert into borrador(last_name,first_name,address,city)
values ('Algo','algores','alguito','medallo');

select first_name, last_name from borrador;

drop TABLE borrador;