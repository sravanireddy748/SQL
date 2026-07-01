-- Create a table Students with the following requirements:
-- student_id → Auto-incrementing primary key
-- email → Must be unique
-- name → Cannot be null
-- age → Must be between 18 and 30
-- city → Default value should be 'Hyderabad'
use d19;
create table persondetails(
student_id int unique Auto_increment,
email varchar(100) unique,
name varchar(100) not null,
age int check(age>=18),
city varchar(100) default 'Hyderabad');
insert into persondetails values (1,'bread@gmail.com','bread',18,'banglore');
insert into persondetails(email,name,age) values ('jam@gmail.com','jam',21);
select * from persondetails;

-- Task 2: Create an Employee Table
-- Create a table Employees with:
-- emp_id → Auto-incrementing primary key
-- emp_name → Not null
-- email → Unique
-- salary → Must be greater than 15000
-- joining_date → Default current date

create table employee(
emp_id int auto_increment unique,
empname varchar(100) not null,
email varchar(100) unique,
salary int check(salary>15000),
joining_date date default '2026-01-07');

insert into  employee(empname,email,salary) values ('peanut butter','butter@gmail.com',300089);
select * from employee;

-- Create a table Products with:
-- product_id → Auto-incrementing primary key
-- product_name → Not null
-- barcode → Unique
-- price → Must be greater than 0
-- stock → Default 0

create table products(
product_id int unique auto_increment,
product_name varchar(100) not null,
barcode varchar(100) unique,
price int check(price>0),
stock int default 0);
insert into products(product_name,barcode,price) values ('dairy milk',290070000,45),('tamarind',390008777,190);
select * from products;
desc products;

-- Write a single CREATE TABLE statement for a Customers table that uses all five constraints:
-- AUTO_INCREMENT
-- PRIMARY KEY
-- UNIQUE
-- NOT NULL
-- CHECK
-- DEFAULT
-- Then insert sample records to demonstrate each constraint.

show tables;

create table product(
id int unique auto_increment,
name varchar(100) not null,
price int check(price>10),
quantity int default 1);
insert into product(name,price) values ('sweet potato',24),('potato',84),('tomato',35);
select * from product;

