INSERT INTO Customers VALUES
(1,'Akshith','Hyderabad'),
(2,'Ravi','Bangalore'),
(3,'Sneha','Chennai'),
(4, 'Kiran', 'Mumbai'),
(5, 'Anjali', 'Delhi'),
(6, 'Vikram', 'Pune'),
(7, 'Meena', 'Hyderabad'),
(8, 'Arjun', 'Chennai'),
(9, 'Priya', 'Bangalore'),
(10, 'Rahul', 'Kolkata'),
(11, 'Rohit', 'Delhi');

INSERT INTO Products VALUES
(101,'Laptop','Electronics',50000),
(102,'Phone','Electronics',20000),
(103,'Shoes','Fashion',3000),
(104,'Tablet','Electronics',30000),
(105,'Headphones','Electronics',2000),
(106,'T-Shirt','Fashion',1000),
(107,'Jeans','Fashion',2500),
(108,'Watch','Accessories',5000),
(109,'Backpack','Accessories',1500),
(110,'Books','Education',800);

INSERT INTO Orders VALUES
(1001,1,'2026-04-01'),
(1002,2,'2026-04-05'),
(1003,1,'2026-04-10'),
(1004, 3, '2026-03-15'),
(1005, 4, '2026-03-20'),
(1006, 5, '2026-04-02'),
(1007, 6, '2026-04-08'),
(1008, 7, '2026-04-12'),
(1009, 8, '2026-05-01'),
(1010, 9, '2026-05-05'),
(1011, 10, '2026-05-10'),
(1012, 2, '2026-05-15'),
(1013, 3, '2026-05-20');

INSERT INTO Order_Items VALUES
(1001,101,1),
(1001,103,2),
(1002,102,1),
(1003,102,2),
(1004, 103, 1),
(1004, 106, 3),
(1005, 101, 1),
(1005, 105, 2),
(1006, 102, 1),
(1006, 108, 1),
(1007, 104, 1),
(1007, 109, 2),
(1008, 107, 2),
(1009, 110, 5),
(1009, 106, 2),
(1010, 102, 2),
(1010, 105, 1),
(1011, 101, 1),
(1011, 108, 1),
(1012, 103, 2),
(1012, 109, 1),
(1013, 104, 1),
(1013, 110, 3);

SELECT * FROM Order_Items;
select * from Orders;
select * FROM Products;
select * FROM Customers;


