create table category(
	id serial primary key,
	name varchar(255)
);

create table animals(
	id serial primary key,
	name varchar(255)	
);

create table categorys_animals(
	id serial primary key,
	category_id int references category(id),
	animals_id int references animals(id)
);