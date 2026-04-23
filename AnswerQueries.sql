
#1.Top Selling Products
SELECT p.product_id,p.Name,SUM(oi.quantity) AS total_sold
FROM Order_Items oi
JOIN Products p ON oi.product_id=p.product_id
GROUP BY p.product_id, p.Name
ORDER BY total_sold DESC;


# Most Valuable Customers
SELECT c.customer_id, c.Name,SUM(oi.quantity * p.price) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id=o.customer_id
JOIN Order_Items oi ON o.order_id=oi.order_id
JOIN Products p ON oi.product_id=p.product_id
GROUP BY c.customer_id,c.Name
ORDER BY total_spent DESC;


# Monthly Revenue Calculation
SELECT EXTRACT(MONTH FROM o.date) AS month,EXTRACT(YEAR FROM o.date) AS year,SUM(oi.quantity * p.price) AS revenue
FROM Orders o
JOIN Order_Items oi ON o.order_id=oi.order_id
JOIN Products p ON oi.product_id=p.product_id
GROUP BY year, month
ORDER BY year, month;


# Category-Wise Sales Analysis
SELECT p.category,SUM(oi.quantity * p.price) AS total_sales
FROM Order_Items oi
JOIN Products p ON oi.product_id=p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;


# Inactive Customers
SELECT c.customer_id, c.name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id=o.customer_id
WHERE o.order_id IS NULL;