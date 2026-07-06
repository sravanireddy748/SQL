use d19;
CREATE TABLE Employees_info (
EmpID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(30),
Salary DECIMAL(10,2),
Age INT,
City VARCHAR(30),
JoiningDate DATE
);
INSERT INTO Employees_info VALUES
(101, 'Alice', 'HR', 45000, 25, 'Hyderabad', '2022-01-10'),
(102, 'Bob', 'IT', 70000, 30, 'Chennai', '2021-06-15'),
(103, 'Charlie', 'Finance', 55000, 28, 'Bangalore', '2020-08-20'),
(104, 'David', 'IT', 80000, 35, 'Hyderabad', '2019-03-12'),
(105, 'Eva', 'HR', 48000, 27, 'Mumbai', '2023-02-18'),
(106, 'Frank', 'Sales', 60000, 31, 'Delhi', '2021-11-25'),
(107, 'Grace', 'Finance', 75000, 29, 'Chennai', '2018-09-10'),
(108, 'Henry', 'Sales', 52000, 26, 'Bangalore', '2022-07-05'),
(109, 'Ivy', 'IT', 90000, 32, 'Mumbai', '2017-05-30'),
(110, 'Jack', 'HR', 47000, 24, 'Delhi', '2023-01-12');

-- Display all employees whose salary is greater than 60,000.
-- Display employees who belong to the IT department.
-- Display employees whose age is less than 30.
-- Display employees who are from Hyderabad and order them by salary in ascending order.
-- Display all employees and sort them by salary in descending order.
-- Display employees whose salary is between 50,000 and 80,000, ordered by age.
-- Display employees whose department is HR, ordered by name alphabetically.
-- Display employees who joined after '2021-01-01', ordered by joining date (latest first).
-- Display employees whose city is Chennai or Bangalore, ordered by city and then salary descending.
-- Display employees whose age is greater than 25, ordered by department (A–Z) and then salary (highest to lowest).

select * from employees_info where salary>60000;
select * from employees_info where department='IT';
select * from employees_info where city='hyderabad' order by salary;
select * from employees_info order by salary desc;
select * from employees_info where salary >50000 and salary<80000 order by age;
select * from employees_info where department='HR' order by name;
select * from employees_info where joiningdate>'2021-01-01' order by joiningdate desc;
select * from employees_info where city='chennai' or city ='banglore' order by city , salary desc;
select * from employees_info where age>25 order by department,salary desc;
use d19;
CREATE TABLE e_commerce_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10, 2),
    total_amount DECIMAL(10, 2),
    order_date DATE
);

INSERT INTO e_commerce_orders (order_id, customer_name, product_name, quantity, price, total_amount, order_date)
VALUES
(1, 'Ravi Kumar', 'Smartphone', 1, 699.99, 699.99, '2025-10-01'),
(2, 'Amit Sharma', 'Laptop', 1, 999.99, 999.99, '2025-10-02'),
(3, 'Raj Patel', 'Headphones', 2, 49.99, 99.98, '2025-10-03'),
(4, 'Neha Gupta', 'Smartwatch', 1, 199.99, 199.99, '2025-10-04'),
(5, 'Priya Mehta', 'Tablet', 1, 329.99, 329.99, '2025-10-05'),
(6, 'Vikram Singh', 'Keyboard', 1, 89.99, 89.99, '2025-10-06'),
(7, 'Sonia Reddy', 'Mouse', 2, 19.99, 39.98, '2025-10-07'),
(8, 'Ravi Sharma', 'Monitor', 1, 249.99, 249.99, '2025-10-08'),
(9, 'Ananya Iyer', 'Phone Case', 3, 15.99, 47.97, '2025-10-09'),
(10, 'Karan Joshi', 'Smartphone', 2, 699.99, 1399.98, '2025-10-10'),
(11, 'Maya Desai', 'Gaming Console', 1, 399.99, 399.99, '2025-10-11'),
(12, 'Rohit Kapoor', 'Speakers', 2, 79.99, 159.98, '2025-10-12'),
(13, 'Simran Chawla', 'Laptop', 1, 849.99, 849.99, '2025-10-13'),
(14, 'Amitabh Reddy', 'Smartwatch', 1, 199.99, 199.99, '2025-10-14'),
(15, 'Tanya Gupta', 'Smartphone', 1, 799.99, 799.99, '2025-10-15'),
(16, 'Harish Kaur', 'Tablet', 1, 299.99, 299.99, '2025-10-16'),
(17, 'Deepak Singh', 'Keyboard', 2, 69.99, 139.98, '2025-10-17'),
(18, 'Neelam Verma', 'Headphones', 1, 89.99, 89.99, '2025-10-18'),
(19, 'Kunal Joshi', 'Gaming Console', 1, 499.99, 499.99, '2025-10-19'),
(20, 'Pooja Shah', 'Monitor', 1, 199.99, 199.99, '2025-10-20');

SELECT * FROM e_commerce_orders;
-- Display all orders where the price is greater than 500.
select * from e_commerce_orders where price>500;
-- Retrieve all orders placed by the customer 'Ravi Kumar'.
select * from e_commerce_orders where customer_name='ravi kumar';
-- Show all orders for the product 'Laptop'.
select * from e_commerce_orders where product_name='laptop';
-- List all orders placed between '2025-10-05' and '2025-10-15'.
select * from e_commerce_orders where order_date between '2025-10-05' and '2025-10-15';
-- Find all distinct product names from the e_commerce_orders table.
select distinct product_name from e_commerce_orders;
-- Display all unique customer names who bought a 'Smartphone'.
select distinct customer_name from e_commerce_orders where product_name='smartphone';
-- Show all orders sorted by order_date in ascending order.
select * from e_commerce_orders where order_date;
-- Display all orders sorted by total_amount in descending order.
select * from e_commerce_orders order by total_amount desc;
-- Retrieve the first 5 orders using the LIMIT clause.
select * from e_commerce_orders limit 5;
-- Display the last 3 orders when sorted by order_date.
select * from e_commerce_orders limit 3 offset 17;
-- Find all orders where the customer_name starts with the letter 'R'.
select * from e_commerce_orders where customer_name like 'r%';
-- Show all products where the price is between 100 and 500.
select * from e_commerce_orders where price > 100 and price < 500;
-- List all orders where the quantity is more than 1.
select * from e_commerce_orders where quantity>1;
-- Display all orders where the product_name is not 'Smartphone'.
select * from e_commerce_orders where product_name<>'smartphone';
-- Show all distinct customers who ordered on '2025-10-10'.
select distinct order_date='2025-10-10' from e_commerce_orders;





