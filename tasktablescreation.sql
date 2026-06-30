create database tasktables;
use tasktables;
create table student(
student_id Integer,
student_name varchar(100),
age Integer,
gender char(50),
email varchar(50),
join_date Date);
insert into student(student_id,student_name,age,gender,email,join_date) values (1,'sravani',21,'f','kotla@gmail.com', '2026-06-10'),(2,'srija',22,'f','sravs@gmail.com', '2026-06-11'),(3,'sowji',20,'f','sowji@gmail.com', '2026-06-09');
select * from student;

create table employee(
emp_id Integer,
emp_name varchar(50),
salary float,
department varchar(10),
hire_date Date,
is_active Boolean);
insert into employee(emp_id,emp_name,salary,department,hire_date,is_active) values (1,'ram',50.98,'cse','2026-06-10',true),(2,'sravs',54.23,'ece','2026-06-25',false),(3,'sowji',78.43,'mechanical','2026-07-23',true);
select * from employee;

create table products(
product_id Integer,
product_name varchar(70),
price float,
quantity Integer,
manufacture_date Date,
expiry_date Date);
insert into products(product_id,product_name,price,quantity,manufacture_date,expiry_date) values (1,'milk',28.9,500,'2025-09-18','2027-09-18'),(2,'bread',32.5,500,'2022-09-18','2022-09-25'),(3,'jam',98.3,200,'2026-09-18','2027-09-18');
select * from products;

create table patients(
patient_id Integer,
patient_name varchar(40),
age Integer,
blood_group varchar(10),
admission_date Date,
bill_amount float);
insert into patients(patient_id,patient_name,age,blood_group,admission_date,bill_amount) values
(1,'devi',80,'A','2025-09-03',58.78),(2,'devaraj',68,'B','2026-06-02',32.78),(3,'dharmaraj',57,'O','2026-03-08',32.85);
select * from patients;