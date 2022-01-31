create table species(
	id serial primary key,
	name varchar(255)
);

create table animals(
	id serial primary key,
	name varchar(255),
	species_id int references species(id)
);