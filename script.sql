create database school;
use school;
create table stud(
stu_id int primary key,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
email varchar(70) not null unique,
DateOfBirth date not null
);

drop table enrollments;

create table enrollments(
enrollment_id int primary key,
stu_id int,
course_name varchar(90) NOT NULL,
enroolment_date varchar(50) NOT NULL,
FOREIGN KEY (stu_id) REFERENCES stud(stu_id)
);
select * from stud;
select * from enrollments;
insert into stud values(1,'john','doe','john.doe@example.com','2000-01-15'),
(2,'jane','smith','jane.smith@example.com','2001-02-20'),
(3,'alice','johnson','alice.johnson@example.com','1999-03-25'),
(4,'bob','brown','bob.brown@example.com','2002-04-30');

insert into enrollments values(1,1,'maths 101','2023-09-01'),
(2,1,'history 101','2023-09-01'),
(3,2,'maths 101','2023-09-01'),
(4,3,'science 101','2023-09-01');
select first_name,last_name from stud inner join enrollments on stud.stu_id=enrollments.stu_id;
select first_name,last_name from stud cross join enrollment;
select first_name,last_name from stud left outer join enrollments on stud.stu_id=enrollments.stu_id;
select first_name,last_name from stud right outer join enrollments on stud.stu_id=enrollments.stu_id;


