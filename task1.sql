'''Create a database named company_db and create the following 5 tables:

1. Employees

emp_id
emp_name
gender
age
department_id
salary
city
joining_date'''
create database companydb;
use companydb;
create table companydb(emp_id int primary key ,emp_name varchar (40),gender enum ('male','female'),age int ,department_id  int unique ,salary decimal(9,2),city char (20),joining_date date);
insert into companydb values(1,"raj","male",34,102,223333,"hyd","2018-09-30"),(2,"ajay","male",35,302,223333,"hyd","2018-09-30");
select *from companydb;

'''2. Departments

department_id
department_name
location'''
create database  Departments;
use  Departments;
create table  Departments(department_id int primary key ,department_name varchar(40),location varchar(30));
insert into Departments values(1,"testing","hyd"),(2,"software developer","hyd");
select * from Departments;
'''3. Projects

project_id
project_name
department_id
budget
start_date'''
create database Projects ;
use  Projects;
create table Projects (project_id int primary key ,project_name varchar(80),department_id int unique ,budgets int ,tart_date date );
select * from Projects;

'''4. Customers

customer_id
customer_name
city
email
phone'''
create database  Customers;
use  Customers;
create table Customers(customer_id int primary key ,customer_name varchar(80),city char (30),email char(30) unique ,phone char(15) );
select * from Customers;

'''5. Orders

order_id
customer_id
product_name
quantity
price
order_date'''
create database Orders ;
use Orders;
create table Orders(order_id int primary key,
customer_id int unique,
product_name char,
quantity int,
price double,
order_date date);
select * from Orders;


'''6.Insert 2 records into each of the following tables:

departments
employees
'''
