insert into role(name) values('administrator');
insert into role(name) values('user');

insert into rules(name) values('rw');
insert into rules(name) values('r');

insert into role_rules(role_id, rules_id) values(1, 1);
insert into role_rules(role_id, rules_id) values(2, 2);

insert into users(name, role_id) values('Ivanov', 1);
insert into users(name, role_id) values('Petrov', 2);