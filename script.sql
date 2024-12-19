-- task 
CREATE DATABASE task;
USE task;
CREATE TABLE students(
Student_id INT not null,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
email varchar(70) not null unique,
DateOfBirth date not null,
enrollment_id int primary key,
FOREIGN KEY (enrollment_id) REFERENCES enrollment(enrollment_id)
);
CREATE TABLE enrollment(
enrollment_id int primary key,
Student_id INT,
Course_name varchar(90) NOT NULL,
enroolment_date varchar(50) NOT NULL
);
select * from students;
select * from enrollment;
insert into students values(1,'anu','rekha',2023-03-01);
insert into students values(2,'swetha','sdf','swetha@gmail.com','2023-05-12');
