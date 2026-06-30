create database D19;
use D19;
create table student(
id int,
Name text,
branch text,
marks int);
describe student;
insert into student(id,Name,branch,marks) values (1, 'sravani' , 'cse' , 96),
(2, 'pushpa', 'cse', 99), (3, 'samantha' , 'ece' , 69);
select * from student;


 