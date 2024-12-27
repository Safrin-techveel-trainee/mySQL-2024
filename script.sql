create database company;
use company;
create  table employee(
Employee_id int primary key,
First_name varchar(50) not null,
last_name varchar(50) not null,
dept_id int not null,
salary double(7,2) not null,
hire_date date not null,
foreign key(dept_id) references dept(dept_id)
);
create table dept(
dept_id int primary key,
dept_name varchar(80) not null
);
select * from employee;
select * from dept;
insert into employee values(1,'john','doe',1,50000.00,'2020-01-15'),
(2,'jane','smith',2,60000.00,'2019-02-20'),
(3,'alice','johnson',3,55000.00,'2018-03-25'),
(4,'bob','brown',4,70000.00,'2017-04-30'),
(5,'charlie','davis',2,75000.00,'2016-05-15'),
(6,'eve','white',3,50000.00,'2015-06-20');

insert into dept values(1,'HR'),(2,'IT'),(3,'Marketing'),(4,'Finance');

select dept_id ,avg(salary) from employee group by dept_id;
select dept_id ,avg(salary) from employee where salary>55000 group by dept_id;
select dept_id ,sum(salary) from employee group by dept_id order by sum(salary) desc;
select dept_id ,sum(salary) as sal from employee group by dept_id having sal > 100000 order by sal desc;