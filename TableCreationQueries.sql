CREATE DATABASE retail_sales_analysis;
use retail_sales_analysis;

CREATE TABLE Customers(
	customer_id int PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(25)
);

CREATE TABLE Products(
	product_id INT PRIMARY KEY,
    Name VARCHAR(50),
    category VARCHAR(25),
    price DECIMAL(10,2)
);

CREATE TABLE Orders(
	order_id INT PRIMARY KEY,
    customer_id INT,
    date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Items(
	order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id,product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

