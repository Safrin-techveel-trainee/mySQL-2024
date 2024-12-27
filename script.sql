create  table employee(
employee_id int primary key,
name varchar(50) not null,
dept varchar(60) not null,
salary int unsigned not null
);
select * from employee;
alter table employee add(position varchar(50) not null);
alter table employee modify column salary decimal(10,2);
alter table employee rename column dept to department;
alter table employee drop column position;