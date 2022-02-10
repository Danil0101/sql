create table devices(
    id serial primary key,
    name varchar(255),
    price float
);

create table people(
    id serial primary key,
    name varchar(255)
);

create table devices_people(
    id serial primary key,
    device_id int references devices(id),
    people_id int references people(id)
);

insert into devices(name, price) values ('TV1', 10000), ('TV2', 20000), ('TV3', 30000);
insert into devices(name, price) values ('radio1', 1000), ('radio2', 2000), ('radio3', 3000);
insert into devices(name, price) values ('pen1', 100), ('pen2', 200), ('pen3', 300);
insert into people(name) values ('Иван'), ('Петр'), ('Ольга');

insert into devices_people(device_id, people_id) values (1, 1), (4, 1), (7, 1);
insert into devices_people(device_id, people_id) values (2, 2), (5, 2), (8, 2);
insert into devices_people(device_id, people_id) values (3, 3), (6, 3), (9, 3);

select avg(price) as "Средняя цена" from devices;

select p.name as "Имя", avg(d.price) as "Средняя цена устройства" 
from devices_people as dp 
join people p on dp.people_id = p.id
join devices d on dp.device_id = d.id
group by p.name;

select p.name as "Имя", avg(d.price) as "Средняя цена устройства" 
from devices_people as dp 
join people p on dp.people_id = p.id
join devices d on dp.device_id = d.id
group by p.name
having avg(d.price) > 5000;