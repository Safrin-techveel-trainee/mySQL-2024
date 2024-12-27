create database scl;
use scl;
create table stude(
StudentId int primary key,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
DateOfBirth date not null
);
drop table stude;
create table course(
courseId int primary key,
course_name varchar(50) NOT NULL,
credits int not null
);
select * from stude;
select * from course;
insert into stude values(1,'john','doe','2000-01-15'),
(2,'jane','smith','1999-06-22'),
(3,'alice','johnson','2001-03-11'),
(4,'bob','brown','2000-08-30');

insert into course values(1,'maths',3),
(2,'phy',4),
(3,'che',3),
(4,'bio',4);
drop procedure sch;
delimiter &&
create procedure sch(in StudentId int )
begin
select * from stude where stude.StudentId=StudentId;
end &&
delimiter ;
call sch(2);