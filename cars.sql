create table car_body(
	id serial primary key
);

create table engine(
	id serial primary key
);

create table transmission(
	id serial primary key
);

create table car(
	id serial primary key,
	car_body_id int references car_body(id) not null,
	engine_id int references engine(id) not null,
	transmission_id int references transmission(id) not null
);

insert into car_body default values;
insert into car_body default values;
insert into car_body default values;
insert into engine default values;
insert into engine default values;
insert into engine default values;
insert into transmission default values;
insert into transmission default values;
insert into transmission default values;
insert into car(car_body_id, engine_id, transmission_id) values (1, 1, 1);
insert into car(car_body_id, engine_id, transmission_id) values (2, 2, 2);

select c.id as car, cb.id as car_body, e.id as engine, t.id as transmission
from car c
left join car_body cb on c.car_body_id = cb.id
left join engine e on c.engine_id = e.id
left join transmission t on c.transmission_id = t.id
;

select cb.id as car_body
from car_body cb
left join car c on cb.id = c.car_body_id
where c.id isnull
;

select e.id as engine
from engine e
left join car c on e.id = c.engine_id
where c.id isnull
;

select t.id as transmission
from transmission t
left join car c on t.id = c.transmission_id
where c.id isnull
;