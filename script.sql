create table cars(
	id serial primary key,
	model varchar(255),
	creation date,
	engine float8
);
insert into cars(model, creation, engine) values('r70', '20200101', 2.5);
update cars set model = 'r50';
delete from cars;