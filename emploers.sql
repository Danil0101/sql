create table departments (
    id serial primary key,
    name varchar(255)
);

create table emploers(
    id serial primary key,
    name varchar(255),
	departments_id int references departments(id)
);

insert into departments(name) values 
('Департамент городского имущества'),
('Департамент градостроительной политики'),
('Департамент жилищно-коммунального хозяйства'),
('Департамент здравоохранения города'),
('Департамент культурного наследия');

insert into emploers(name, departments_id) values
('Иванов', 1),
('Петров', 1),
('Сидоров', 2),
('Спиридонов', 2),
('Бойко', 2);

select e.name, d.name as department from emploers e
left join departments d on e.departments_id = d.id;

select e.name, d.name as department from emploers e
right join departments d on e.departments_id = d.id;

select e.name, d.name as department from emploers e
full join departments d on e.departments_id = d.id;

select e.name, d.name as department from emploers e
cross join departments d;

select d.name as department, e.name from departments d
left join emploers e on d.id = e.departments_id
where e.name is null;

select e.name, d.name as department from emploers e
left join departments d on e.departments_id = d.id
where d.name is not null;

select e.name, d.name as department from emploers e
right join departments d on e.departments_id = d.id
where e.name is not null;

