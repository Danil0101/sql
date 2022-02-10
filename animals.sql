create table color(
    id serial primary key,
    name varchar(255)
);

create table animal(
    id serial primary key,
    name varchar(255),
    color_id int references color(id)
);

insert into color(name) values ('white');
insert into color(name) values ('black');
insert into color(name) values ('green');

insert into animal(name, color_id) values ('horse', 1);
insert into animal(name, color_id) values ('bear', 2);
insert into animal(name, color_id) values ('crocodile', 3);
insert into animal(name) values ('frog');

select a.name as животное, c.name as цвет 
from animal as a join color as c on a.color_id = c.id
where a.name = 'horse';

select a.name as животное, c.name as цвет 
from animal as a join color as c on a.color_id = c.id
where c.name = 'black';

select a.name as животное, c.name as цвет 
from animal as a join color as c on a.color_id = c.id;


