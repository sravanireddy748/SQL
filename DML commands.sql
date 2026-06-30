-- 1.practice dml commands 

create table movies(
movieID int,
moviename varchar(100),
language varchar(20),
DateOfRelease date);
insert into movies values(1,'shyam singa roy','telugu','2024-08-12');
insert into movies values(2,'radhe shyam','telugu','2023-08-12'),(3,'chandamama','telugu','2013-06-09');
set sql_safe_updates=0;
update movies set language='hindi' where movieID=2;
select * from movies;
delete from movies where movieID=2;

-- 2.practice constraints
create table employees(
EmployeeID int Primary Key not null,
EmployeeName varchar(100) unique,
Department  varchar(10),
Salary int,
JoinDate date);
insert into employees values (1,'ranabali','mech',7000,'2027-06-08'),(2,'salaar','cse',8000,'2024-06-04');



