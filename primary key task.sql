use d19;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    address TEXT,
    date_joined DATE
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100),
    description TEXT
);

CREATE TABLE Products1 (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    stock_quantity INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    shipping_address TEXT,
    payment_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    item_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products1(product_id)
);

INSERT INTO Customers VALUES
(1,'Ravi','Kumar','ravi@gmail.com','9876543210','Hyderabad','2025-01-10'),
(2,'Sravani','Reddy','sravani@gmail.com','9876543211','Warangal','2025-02-15'),
(3,'Anil','Sharma','anil@gmail.com','9876543212','Hyderabad','2025-03-20'),
(4,'Priya','Singh','priya@gmail.com','9876543213','Vijayawada','2025-04-25'),
(5,'Rahul','Verma','rahul@gmail.com','9876543214','Delhi','2025-05-30');


INSERT INTO Categories VALUES
(1,'Electronics','Electronic Items'),
(2,'Clothing','Fashion Wear'),
(3,'Books','Educational Books'),
(4,'Home Appliances','Kitchen Products');

INSERT INTO Products1 VALUES
(101,'Laptop','Dell Laptop',60000,10,1),
(102,'Mobile','Samsung Phone',25000,20,1),
(103,'T-Shirt','Cotton T-Shirt',500,100,2),
(104,'Python Book','Programming Book',800,50,3),
(105,'Mixer','Kitchen Mixer',3500,15,4);

INSERT INTO Orders VALUES
(1001,1,'2025-07-01',61000,'Hyderabad','Paid'),
(1002,2,'2025-07-02',25000,'Warangal','Paid'),
(1003,3,'2025-07-03',1300,'Hyderabad','Pending'),
(1004,1,'2025-07-05',3500,'Hyderabad','Paid');

INSERT INTO Order_Items VALUES
(1,1001,101,1,60000),
(2,1001,104,1,1000),
(3,1002,102,1,25000),
(4,1003,103,2,500),
(5,1003,104,1,300),
(6,1004,105,1,3500);

SELECT * FROM Products1;