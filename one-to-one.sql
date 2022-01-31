create table animals(
	id serial primary key,
	name varchar(255),
	animals_id int references animals_id(id) unique
);

create table animals_id(
	id serial primary key,
	number int
);