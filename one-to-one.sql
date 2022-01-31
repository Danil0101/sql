create table people(
	id serial primary key,
	name varchar(255),
	married int references people(id) unique
);
