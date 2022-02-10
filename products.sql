create table type(
    id serial primary key,
    name varchar(255)	
);

create table product(
    id serial primary key,
    name varchar(255),
	type_id int references type(id),
    expired_date date,
	price float
);

insert into type(name) values ('СЫР'), ('МОЛОКО'), ('МЯСО');

insert into product(name, type_id, expired_date, price) values ('Сыр плавленный', 1, '2022-01-01', 10);
insert into product(name, type_id, expired_date, price) values ('Сыр моцарелла', 1, '2022-01-01', 20);
insert into product(name, type_id, expired_date, price) values ('Сыр адыгейский', 1, '2022-01-01', 30);
insert into product(name, type_id, expired_date, price) values ('Сыр чеддер', 1, '2022-01-01', 40);

insert into product(name, type_id, expired_date, price) values ('Молоко сгущенное', 2, '2022-01-01', 10);
insert into product(name, type_id, expired_date, price) values ('Молоко пастеризованное', 2, '2022-01-01', 20);

insert into product(name, type_id, expired_date, price) values ('Мясо1', 3, '2022-01-01', 10);
insert into product(name, type_id, expired_date, price) values ('Мясо2', 3, '2022-01-01', 10);
insert into product(name, type_id, expired_date, price) values ('Мясо3', 3, '2022-01-01', 10);
insert into product(name, type_id, expired_date, price) values ('Мясо4', 3, '2022-01-01', 10);
insert into product(name, type_id, expired_date, price) values ('Мясо5', 3, '2022-01-01', 10);
insert into product(name, type_id, expired_date, price) values ('Мясо6', 3, '2022-01-01', 10);
insert into product(name, type_id, expired_date, price) values ('Мясо7', 3, '2022-01-01', 10);
insert into product(name, type_id, expired_date, price) values ('Мясо8', 3, '2022-01-01', 10);
insert into product(name, type_id, expired_date, price) values ('Мясо9', 3, '2022-01-01', 10);
insert into product(name, type_id, expired_date, price) values ('Мясо10', 3, '2022-01-01', 10);
insert into product(name, type_id, expired_date, price) values ('Мясо мороженое', 3, '2022-01-01', 20);
insert into product(name, type_id, expired_date, price) values ('Мясо мороженое2', 3, '2023-01-01', 20);

select p.name, p.expired_date as date, p.price, t.name as type 
from product p
join type t on p.type_id = t.id
where t.name = 'СЫР'
;

select p.name, p.price 
from product p
where p.name like '%мороженое%'
;

select p.name, p.price 
from product p
where p.expired_date < current_date
;

select p.name, p.price 
from product p
order by p.price DESC 
limit 1
;

select t.name as type, count(t.name) as amount
from product p
join type t on p.type_id = t.id
group by t.name
;

select p.name, p.expired_date as date, p.price, t.name as type 
from product p
join type t on p.type_id = t.id
where t.name = 'СЫР' OR t.name = 'МОЛОКО'
;

select t.name as type, count(t.name) as amount
from product p
join type t on p.type_id = t.id
group by t.name
having count(t.name) < 10
;

select p.name, p.expired_date as date, p.price, t.name as type 
from product p
join type t on p.type_id = t.id
;
