CREATE DATABASE emp_details;
USE emp_details;
CREATE TABLE employee(
	emp_id int,
    emp_name varchar(50),
    dept varchar(50),
    emp_joining_date date,
    salary int,
    emp_DOB date,
    emp_email varchar(60),
    emp_ph_NO int
    );
   INSERT INTO employee VALUES(1,'anu','manager','2917-06-11',15000,'2005-11-08','abc@gmail.com',1234567890),
   (2,'renu','assistant','2018-09-05',25000,'2005-12-03','mnc@gmail.com',1233564890);
   SELECT * FROM employee;
   