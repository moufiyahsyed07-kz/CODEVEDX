CREATE DATABASE customer_dna;
SHOW DATABASES;
USE customer_dna;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE,
    last_purchase_date DATE
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount DECIMAL(10,2),
    order_status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_amount DECIMAL(10,2),
    payment_status VARCHAR(30),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
SHOW TABLES;
INSERT INTO Customers VALUES
(1, 'Aarav Kumar', 'aarav@gmail.com', 'Chennai', '2025-01-10', '2026-10-15'),
(2, 'Meera Nair', 'meera@gmail.com', 'Coimbatore', '2025-02-12', '2026-10-20'),
(3, 'Ananya Rao', 'ananya@gmail.com', 'Madurai', '2025-03-05', '2026-08-10'),
(4, 'Rahul Das', 'rahul@gmail.com', 'Chennai', '2025-04-18', '2026-05-12'),
(5, 'Priya Shah', 'priya@gmail.com', 'Salem', '2025-05-20', '2026-10-25'),
(6, 'Vikram Raj', 'vikram@gmail.com', 'Trichy', '2025-06-15', '2026-03-01'),
(7, 'Divya Menon', 'divya@gmail.com', 'Chennai', '2025-07-22', '2026-09-18'),
(8, 'Karthik Iyer', 'karthik@gmail.com', 'Erode', '2025-08-11', '2026-01-15'),
(9, 'Sneha Patel', 'sneha@gmail.com', 'Coimbatore', '2025-09-09', '2026-10-28'),
(10, 'Arjun Reddy', 'arjun@gmail.com', 'Madurai', '2025-10-01', '2026-02-10'),
(11, 'Nila Thomas', 'nila@gmail.com', 'Chennai', '2025-11-14', '2026-10-05'),
(12, 'Surya Prakash', 'surya@gmail.com', 'Salem', '2025-12-01', '2026-04-20');
SELECT * FROM Customers;
INSERT INTO Products VALUES
(1, 'Smart Watch', 'Electronics', 2999.00),
(2, 'Wireless Earbuds', 'Electronics', 1999.00),
(3, 'Office Chair', 'Furniture', 5499.00),
(4, 'Travel Backpack', 'Accessories', 1499.00),
(5, 'Fitness Band', 'Electronics', 1799.00),
(6, 'Study Table', 'Furniture', 3999.00);
SELECT * FROM Products;
INSERT INTO Orders VALUES
(1, 1, '2026-03-15', 2999.00, 'Delivered'),
(2, 1, '2026-10-15', 1999.00, 'Delivered'),
(3, 2, '2026-02-20', 5499.00, 'Delivered'),
(4, 2, '2026-06-10', 2999.00, 'Delivered'),
(5, 2, '2026-10-20', 3999.00, 'Delivered'),
(6, 3, '2026-08-10', 1499.00, 'Delivered'),
(7, 4, '2026-05-12', 5499.00, 'Delivered'),
(8, 5, '2026-07-01', 1799.00, 'Delivered'),
(9, 5, '2026-10-25', 2999.00, 'Delivered'),
(10, 6, '2026-03-01', 3999.00, 'Delivered'),
(11, 7, '2026-04-20', 1999.00, 'Delivered'),
(12, 7, '2026-09-18', 2999.00, 'Delivered'),
(13, 8, '2026-01-15', 1499.00, 'Delivered'),
(14, 9, '2026-10-28', 2999.00, 'Delivered'),
(15, 9, '2026-08-01', 1799.00, 'Delivered'),
(16, 10, '2026-02-10', 5499.00, 'Delivered'),
(17, 11, '2026-05-20', 1999.00, 'Delivered'),
(18, 11, '2026-10-05', 3999.00, 'Delivered'),
(19, 12, '2026-04-20', 2999.00, 'Delivered');
SELECT * FROM Orders;
INSERT INTO Order_Items VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 1),
(4, 4, 1, 1),
(5, 5, 6, 1),
(6, 6, 4, 1),
(7, 7, 3, 1),
(8, 8, 5, 1),
(9, 9, 1, 1),
(10, 10, 6, 1),
(11, 11, 2, 1),
(12, 12, 1, 1),
(13, 13, 4, 1),
(14, 14, 1, 1),
(15, 15, 5, 1),
(16, 16, 3, 1),
(17, 17, 2, 1),
(18, 18, 6, 1),
(19, 19, 1, 1);
SELECT * FROM Order_Items;
INSERT INTO Payments VALUES
(1, 1, '2026-03-15', 2999.00, 'Completed'),
(2, 2, '2026-10-15', 1999.00, 'Completed'),
(3, 3, '2026-02-20', 5499.00, 'Completed'),
(4, 4, '2026-06-10', 2999.00, 'Completed'),
(5, 5, '2026-10-20', 3999.00, 'Completed'),
(6, 6, '2026-08-10', 1499.00, 'Completed'),
(7, 7, '2026-05-12', 5499.00, 'Completed'),
(8, 8, '2026-07-01', 1799.00, 'Completed'),
(9, 9, '2026-10-25', 2999.00, 'Completed'),
(10, 10, '2026-03-01', 3999.00, 'Completed'),
(11, 11, '2026-04-20', 1999.00, 'Completed'),
(12, 12, '2026-09-18', 2999.00, 'Completed'),
(13, 13, '2026-01-15', 1499.00, 'Pending'),
(14, 14, '2026-10-28', 2999.00, 'Completed'),
(15, 15, '2026-08-01', 1799.00, 'Completed'),
(16, 16, '2026-02-10', 5499.00, 'Failed'),
(17, 17, '2026-05-20', 1999.00, 'Completed'),
(18, 18, '2026-10-05', 3999.00, 'Completed'),
(19, 19, '2026-04-20', 2999.00, 'Pending');
SELECT * FROM Payments;
SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_orders DESC;
SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.order_amount) AS total_spent
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC;
SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    CASE
        WHEN COUNT(o.order_id) >= 3 THEN 'Loyal Customer'
        WHEN COUNT(o.order_id) = 2 THEN 'Returning Customer'
        ELSE 'New Customer'
    END AS customer_type
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_orders DESC;
SELECT
    customer_name,
    last_purchase_date,
    DATEDIFF('2026-11-13', last_purchase_date) AS inactive_days,
    CASE
        WHEN DATEDIFF('2026-11-13', last_purchase_date) > 180
            THEN 'High Churn Risk'
        WHEN DATEDIFF('2026-11-13', last_purchase_date) > 90
            THEN 'Medium Churn Risk'
        ELSE 'Low Churn Risk'
    END AS churn_status
FROM Customers
ORDER BY inactive_days DESC;
SELECT
    customer_group,
    COUNT(*) AS customer_count,
    ROUND(COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM Customers), 2) AS percentage
FROM (
    SELECT
        c.customer_id,
        CASE
            WHEN COUNT(o.order_id) > 1
                THEN 'Repeat Customer'
            ELSE 'One-Time Customer'
        END AS customer_group
    FROM Customers c
    LEFT JOIN Orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
) AS customer_segments
GROUP BY customer_group;
SELECT
    payment_status,
    COUNT(*) AS total_payments,
    SUM(payment_amount) AS total_amount,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Payments), 2
    ) AS percentage
FROM Payments
GROUP BY payment_status
ORDER BY total_payments DESC;
SELECT
    p.product_name,
    p.category,
    SUM(oi.quantity) AS total_quantity_sold
FROM Products p
JOIN Order_Items oi
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name, p.category
ORDER BY total_quantity_sold DESC;
SELECT
    c.city,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(o.order_id) AS total_orders,
    SUM(o.order_amount) AS total_revenue
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC;
SELECT
    MONTHNAME(order_date) AS purchase_month,
    COUNT(order_id) AS total_orders,
    SUM(order_amount) AS monthly_revenue
FROM Orders
GROUP BY MONTH(order_date), MONTHNAME(order_date)
ORDER BY MONTH(order_date);
SELECT
    ROUND(AVG(order_amount), 2) AS average_order_value,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(order_amount), 2) AS total_revenue
FROM Orders;
WITH Purchase_Gaps AS (
    SELECT
        customer_id,
        order_date,
        LAG(order_date) OVER (
            PARTITION BY customer_id
            ORDER BY order_date
        ) AS previous_order_date
    FROM Orders
)
SELECT
    c.customer_name,
    ROUND(AVG(DATEDIFF(order_date, previous_order_date)), 0)
        AS average_days_between_orders
FROM Purchase_Gaps pg
JOIN Customers c
    ON pg.customer_id = c.customer_id
WHERE previous_order_date IS NOT NULL
GROUP BY c.customer_id, c.customer_name
ORDER BY average_days_between_orders;
SELECT
    c.customer_name,
    SUM(o.order_amount) AS total_spent,
    RANK() OVER (
        ORDER BY SUM(o.order_amount) DESC
    ) AS spending_rank
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;
SELECT
    CASE
        WHEN COUNT(o.order_id) > 1 THEN 'Retained Customers'
        ELSE 'Not Retained Customers'
    END AS retention_status,
    COUNT(*) AS customer_count
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id;
SELECT
    p.category,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.quantity) AS quantity_sold,
    SUM(oi.quantity * p.price) AS category_revenue
FROM Products p
JOIN Order_Items oi
    ON p.product_id = oi.product_id
JOIN Orders o
    ON oi.order_id = o.order_id
GROUP BY p.category
ORDER BY category_revenue DESC;
SELECT
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.order_amount) AS total_spent
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING SUM(o.order_amount) > 5000
ORDER BY total_spent DESC;
SELECT
    (SELECT COUNT(*) FROM Customers) AS total_customers,
    (SELECT COUNT(*) FROM Products) AS total_products,
    (SELECT COUNT(*) FROM Orders) AS total_orders,
    (SELECT COUNT(*) FROM Order_Items) AS total_order_items,
    (SELECT COUNT(*) FROM Payments) AS total_payments;
    SELECT * FROM Customers;
    SELECT * FROM Products;
    SELECT * FROM Orders;
    SELECT * FROM Order_Items;
    SELECT * FROM Payments;
    -- Project 2: Customer DNA - Data verification completed