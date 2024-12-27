create database library;
use library;
create table books(
book_id int primary key,
title varchar(80) NOT NULL,
author varchar(50) NOT NULL,
publishedYear int not null,
genre varchar(50) NOT NULL,
copiesAvail int NOT NULL
);
create table borrowers(
borrowerId int primary key,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
book_id int not null,
borrowDate date not null,
ReturnDate date ,
foreign key(book_id) references books(book_id)
);
select * from books;
select * from borrowers;
insert into books values(1,'the great gatsby','F.scott',1925,'fiction',5),
(2,'to kill','harper',1960,'fiction',3),
(3,'1984','george',1949,'dystopian',4),
(4,'moby','herman',1851,'fiction',2),
(5,'war','leo',1869,'historical',1);

insert into borrowers values
(1,'john','doe',1,'2023-01-10','2023-01-20'),
(2,'jane','smith',2,'2023-02-15',null),
(3,'alice','johnson',3,'2023-03-05','2023-03-12'),
(4,'bob','brown',4,'2023-04-01','2023-04-10'),
(5,'charlie','davis',2,'2023-05-20',null);

 select title , author from books where book_id not in (select borrowers.book_id from borrowers) ;

select borrowers.first_name,borrowers.last_name,books.title from borrowers 
 inner join books on books.book_id=borrowers.book_id where borrowers.ReturnDate is null;
 
select title , author from books where books.book_id=
(select book_id from borrowers where borrowDate=(select max(borrowDate) from borrowers));

-- select title , author from books where borrowDate >='2023-05-20'; 

select title , author from books where copiesAvail < (select avg(copiesAvail) from books);


