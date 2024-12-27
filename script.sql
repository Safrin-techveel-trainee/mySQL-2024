create database com_pany;
use com_pany;
create table emp(
employee_id int primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
salary decimal(7,2),
dep_id int,
foreign key(dep_id) references dep(dep_id)
);
drop table emp;
create table dep(
dep_id int primary key,
dep_name varchar(50) not null
);
insert into emp values(1,'john','doe',50000.00,1),
(2,'jane','smith',60000.00,2),
(3,'alice','johnson',null,1),
(4,'bob','brown',55000.00,null);

insert into dep values(1,'hr'),
(2,'engineering'),
(3,'sales');

select * from emp;
select * from dep;
select employee_id,first_name,last_name,salary,if(salary>55000,"above 55000","below 55000") as sal_status from emp;
select *,ifnull(salary,50000) from emp ;
select employee_id,first_name,last_name,salary,
case
when salary<50000 then "low"
when salary>=60000 then "high"
when salary>=50000 then "medium"
end as sal_status from emp;

create table auditlog(
log_id  int primary key auto_increment,
employee_id int not null,
action varchar(50) not null,
actionTime datetime not null 
);
drop table auditlog;
drop trigger employ;
DELIMITER &&
CREATE TRIGGER employ AFTER INSERT ON emp FOR EACH ROW
BEGIN
	INSERT INTO auditlog (employee_id ,action,actionTime) VALUES (new.employee_id ,'insert',current_time());
END &&
DELIMITER ;
INSERT INTO emp values(7,'reena','s',60000.00,3);
INSERT INTO emp values(8,'santhiya','s',60000.00,2);
select * from auditlog;
select * from emp;