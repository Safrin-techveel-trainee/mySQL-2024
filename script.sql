create table customer(
order_id int primary key,
customer_name varchar(50) not null,
email varchar(70) not null unique,
order_date date not null,
total_amount decimal(5,2) not null
);

drop table customer;
select * from customer;
insert into customer values(101,'john doe','john@example.com','2024-03-25',150.00),
(102,'jane smith','jane@example.com','2024-03-25',200.50),
(103,'alice johnson','alice@example.com','2024-03-26',75.25),
(104,'john doe','johndoe@example.com','2024-03-27',100.75),
(105,'jane smith','janesmith@example.com','2024-03-27',300.00),
(106,'alice johnson','aliceson@example.com','2024-03-28',50.25),
(107,'bob brown','bob@example.com','2024-03-28',175.50),
(108,'alice johnson','alicjohne@example.com','2024-03-29',125.75),
(109,'john doe','joo@example.com','2024-03-29',90.25),
(110,'jane smith','jan@example.com','2024-03-30',180.00);



select * from customer;

select count(*) from customer;
select sum(total_amount) from customer;
select avg(total_amount) from customer;
select max(total_amount) from customer;