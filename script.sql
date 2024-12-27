CREATE DATABASE customerdet;
USE customerdet;
CREATE TABLE customers(
customer_id INT UNSIGNED,
cus_Name VARCHAR(50),
email VARCHAR(70),
phone_number INT,
address VARCHAR(100)
);
INSERT INTO customers VALUES(1001,'Ajith','ajith@example.com',1234567890,'Chennai,TAMIL NADU'),
(1002,'Vijay','vijay@example.com',983456730,'Coimbatore,TAMIL NADU'),
(1003,'Rajesh','rajesh@example.com',983454568,'Madurai,TAMIL NADU'),
(1004,'Kumar','Kumar@example.com',789034568,'Trichy,TAMIL NADU'),
(1005,'Deepa','deepa@example.com',789456568,'Salem,TAMIL NADU'),
(1006,'Meena','meena@example.com',456738245,'Tirunelveli,TAMIL NADU'),
(1007,'Suresh','suresh@example.com',234568901,'Thanjavur,TAMIL NADU'),
(1008,'Divya','divya@example.com',988764543,'Kanyakumari,TAMIL NADU'),
(1009,'Arjun','arjun@example.com',883456790,'Vellore,TAMIL NADU'),
(1010,'Sanjay','sanjay@example.com',993467890,'Erode,TAMIL NADU');
SELECT * FROM  customers;

CREATE TABLE orders(
order_id INT UNSIGNED,
customer_id INT UNSIGNED,
order_date DATE,
total_amount DOUBLE(5,2)
);
INSERT INTO orders VALUES(2001,1001,'2024-03-25',150.00),
(2002,1002,'2024-03-25',200.50),
(2003,1003,'2024-03-26',75.25),
(2004,1001,'2024-03-27',100.75),
(2005,1002,'2024-03-27',300.00),
(2006,1003,'2024-03-28',50.25),
(2007,1004,'2024-03-28',175.50),
(2008,1004,'2024-03-29',125.75),
(2009,1005,'2024-03-29',90.25),
(2010,1005,'2024-03-30',180.00);
SELECT * FROM orders;
SELECT * FROM customers WHERE customer_id IN ('1001','1002','1003','1004','1005');
SELECT * FROM customers WHERE address LIKE '%ma%';
SELECT * FROM customers WHERE customer_id NOT IN ('1001','1002','1003','1004','1005');
SELECT * FROM orders WHERE order_date>'2024-03-26' AND total_amount>100;
SELECT * FROM orders WHERE customer_id IN ('1001','1002');

CREATE TABLE students(
id INT UNSIGNED,
stu_name  VARCHAR(50),
gender ENUM('male','female'),
age INT UNSIGNED,
phone_number INT,
gpa DOUBLE(2,1),
date_of_birth DATE,
reg_date DATETIME
);
SELECT * FROM students;


