select * from fauna where name LIKE '%fish%';
select * from fauna where avg_age BETWEEN 10000 AND 21000;
select * from fauna where discovery_date is null;
select * from fauna where discovery_date < date '1950-01-01';