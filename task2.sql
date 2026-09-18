create database online_store;
use online_store;
create table customers (customer_id int unique, customer_name varchar(50), city varchar(35),phone varchar(15));
insert into customers values(1," Ravi" ,"Hyderabad"," 9876543210"),
( 2, "Sita", "Vijayawada ","9876543211"),
 (3 ,"Arun ","Chennai ","9876543212"),
 (4 ,"Priya" ,"Hyderabad ","9876543213"), 
 (5 ,"Kiran ","Bangalore ","9876543214"),
 (6 ,"Meena ","Chennai"," 9876543215") ,
 (7 ,"Ajay" ,"Pune"," 9876543216"),
 (8 ,"Divya ","Hyderabad"," 9876543217");
select *from customers ;

create table products (product_id int unique, product_name varchar(25), category varchar(30), price int(9),stock int(30));
insert into products values(101 ,"Laptop","Electronics",55000 , 10),
 (102,"Mouse "," Accessories", 800  ,50),
 (103,"Keyboard  ","Accessories", 1500 , 30 ),
 (104 ,"Monitor"," Electronics ",12000  ,15),
 (105,"Headphones","  Accessories ",2500 , 25),
 (106,"Printer","Electronics ",15000  ,8),
 (107,"Webcam ","Electronics", 3500  ,20 ),
 (108,"Speaker","Electronics",  4000 ,18),
 (109,"USB Cable ","Accessories ",500 , 100);
select* from products;

create table orderss (order_id int unique, customer_id int (8), order_date varchar(10), status varchar(10));
insert into orderss values
(1001, 1, '2026-08-01', 'Delivered'),
(1002, 2, '2026-08-02', 'Delivered'),
(1003, 1, '2026-08-03', 'Pending'),
(1004, 3, '2026-08-04', 'Delivered'),
(1005, 4, '2026-08-05', 'Cancelled'),
(1006, 5, '2026-08-06', 'Delivered'),
(1007, 6, '2026-08-07', 'Pending'),
(1008, 7, '2026-08-08', 'Delivered'),
(1009, 8, '2026-08-09', 'Delivered'),
(1010, 2, '2026-08-10', 'Pending'),
(1011, 4, '2026-08-11', 'Delivered'),
(1012, 5, '2026-08-12', 'Delivered');
select * from orderss;

create table order_items (order_item_id int (30), order_id int(45), product_id int(50), quantity int(35));
insert into order_items values
(1, 1001, 101, 1),
(2, 1001, 102, 2),
(3, 1002, 103, 1),
(4, 1002, 105, 2),
(5, 1003, 104, 1),
(6, 1003, 109, 3),
(7, 1004, 101, 1),
(8, 1004, 107, 2),
(9, 1005, 102, 1),
(10, 1006, 106, 1),
(11, 1006, 108, 2),
(12, 1007, 105, 1),
(13, 1007, 110, 2),
(14, 1008, 104, 2),
(15, 1008, 102, 1),
(16, 1009, 107, 1),
(17, 1010, 101, 1),
(18, 1010, 109, 4),
(19, 1011, 103, 2),
(20, 1012, 108, 1);
select * from order_items;