-- Create a table named Students with the following columns:
-- StudentID (Primary Key)
-- StudentName
-- Age
-- Course
-- Email
use d19;
create table students(
StudentID int Primary Key,
StudentName varchar(100),
Age int,
Course varchar(10),
Email varchar(100));
insert into students values(1,'bahubali',32,'movie','bahubali@gmail.com'),(2,'magadheera',22,'cinema','magadhera@gmail.com');
select * from students;

-- Task 2: Create Employee Table
-- Create a table named Employees with:
-- EmployeeID (Primary Key)
-- EmployeeName
-- Department
-- Salary
-- JoinDate

create table employee(
EmployeeID int Primary Key,
EmployeeName varchar(100),
Department  varchar(10),
Salary int,
JoinDate date);
insert into employee values (1,'ranabali','mech',7000,'2027-06-08'),(2,'salaar','cse',8000,'2024-06-04');
select * from employee;
-- Add a column PhoneNumber to the Students table.
alter table students add column PhoneNumber int;

-- Modify the Salary column in the Employees table to allow decimal values with 2 decimal places.
alter table employee modify column salary decimal(8,2);
-- Rename the column Course in the Students table to CourseName.
alter table students rename column course to CourseName;

-- Rename the table Employees to Staff.
rename table employee to staff;



