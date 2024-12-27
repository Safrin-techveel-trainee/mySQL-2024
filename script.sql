CREATE TABLE students_det(
id INT UNSIGNED,
stu_name  VARCHAR(50),
gender ENUM('male','female'),
age INT UNSIGNED,
phone_number INT,
gpa DOUBLE(2,1),
date_of_birth DATE,
reg_date DATETIME
);
INSERT INTO students_det VALUES(1,'Anbu Krishnan','Female',20,987647123,3.8,'2000-05-15','2022-03-20 09:00:00'),
(2,'Siva Kumar','Male',22,468776449,3.9,'1999-12-10','2022-03-21 10:30:00'),
(3,'Lakshmi Sadish','Female',21,875647123,3.7,'2001-02-28','2022-03-22 11:45:00'),
(4,'Amutha Balaji','Female',23,98765123,3.5,'1998-09-05','2022-03-23 13:15:00'),
(5,'Devaraj Kanakaraj','Male',24,935647123,3.6,'1997-07-20','2022-03-24 14:45:00'),
(6,'Kavitha Rama','Female',20,987747123,3.8,'2000-05-15','2022-03-20 09:00:00'),
(7,'Mano Madurai','Female',22,94327123,3.9,'1999-12-10','2022-03-21 10:30:00'),
(8,'Ramesh Subramaniyam','Male',21,905647123,3.7,'2001-02-28','2022-03-22 11:45:00'),
(9,'Kaviya Balaji','Female',23,986571232,3.5,'1998-09-05','2022-03-23 13:15:00'),
(10,'Santosh Raj','Male',24,987566512,3.6,'1997-07-20','2022-03-24 14:45:00');
SELECT * FROM students_det;
SELECT * FROM students_det WHERE age+5;
SELECT * FROM students_det WHERE age-5;
SELECT * FROM students_det WHERE age*5;
SELECT * FROM students_det WHERE age/5;
SELECT * FROM students_det WHERE age%5;

SELECT * FROM students_det WHERE age=24;
SELECT * FROM students_det WHERE age<>5;
SELECT * FROM students_det WHERE gpa>=3.7;
SELECT * FROM students_det WHERE gpa<=3.8;
SELECT * FROM students_det WHERE gender='male' AND age=21;
SELECT * FROM students_det WHERE gender='female' OR age=21;
SELECT * FROM students_det WHERE gender NOT IN ('male') ;
SELECT * FROM students_det WHERE id BETWEEN 2 AND 7 ;
SELECT * FROM students_det WHERE stu_name LIKE 'n% ';

