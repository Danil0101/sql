create table teens(
    id serial primary key,
    name varchar(255),
	gender char(1)
);

insert into teens(name, gender) values
('Саша', 'M'),
('Петя', 'M'),
('Маша', 'F'),
('Даша', 'F');

select * from teens t1
cross join teens t2
where t1.gender != t2.gender;