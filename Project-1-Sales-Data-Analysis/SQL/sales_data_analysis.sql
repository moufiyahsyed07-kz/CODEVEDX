USE sales_analysis;
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_date DATE,
    payment_method VARCHAR(50),
    amount DECIMAL(10,2),
    payment_status VARCHAR(30),
    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id)
);
SHOW TABLES;
SELECT
    TABLE_NAME,
    COLUMN_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'sales_analysis'
AND REFERENCED_TABLE_NAME IS NOT NULL;
INSERT INTO Customers
(customer_name, email, city, registration_date)
VALUES
('Aarav Kumar', 'aarav@gmail.com', 'Chennai', '2025-01-15'),
('Diya Sharma', 'diya@gmail.com', 'Coimbatore', '2025-02-10'),
('Rahul Raj', 'rahul@gmail.com', 'Madurai', '2025-02-20'),
('Meera Nair', 'meera@gmail.com', 'Chennai', '2025-03-05'),
('Arjun Das', 'arjun@gmail.com', 'Salem', '2025-03-18'),
('Priya Menon', 'priya@gmail.com', 'Trichy', '2025-04-01'),
('Kavin Kumar', 'kavin@gmail.com', 'Coimbatore', '2025-04-12'),
('Ananya Rao', 'ananya@gmail.com', 'Erode', '2025-05-08'),
('Vishal Anand', 'vishal@gmail.com', 'Chennai', '2025-05-20'),
('Sara Joseph', 'sara@gmail.com', 'Tirunelveli', '2025-06-02');
SELECT * FROM Customers;
INSERT INTO Products
(product_name, category, price, stock_quantity)
VALUES
('Wireless Mouse', 'Electronics', 599.00, 120),
('Mechanical Keyboard', 'Electronics', 2499.00, 45),
('Bluetooth Headphones', 'Electronics', 1799.00, 60),
('Cotton T-Shirt', 'Fashion', 499.00, 150),
('Running Shoes', 'Fashion', 1999.00, 75),
('Office Chair', 'Furniture', 5499.00, 25),
('Study Table', 'Furniture', 3999.00, 30),
('Water Bottle', 'Accessories', 299.00, 200),
('Backpack', 'Accessories', 899.00, 90),
('Smart Watch', 'Electronics', 3299.00, 40);
SELECT * FROM Products;
INSERT INTO Orders
(customer_id, order_date, total_amount)
VALUES
(1, '2025-06-05', 3098.00),
(2, '2025-06-08', 499.00),
(3, '2025-06-12', 2499.00),
(4, '2025-06-15', 7298.00),
(5, '2025-06-18', 899.00),
(1, '2025-07-02', 1799.00),
(6, '2025-07-05', 1999.00),
(7, '2025-07-10', 599.00),
(8, '2025-07-14', 5499.00),
(9, '2025-07-20', 3299.00),
(2, '2025-08-03', 3999.00),
(3, '2025-08-09', 299.00),
(10, '2025-08-15', 2499.00),
(4, '2025-08-21', 899.00),
(5, '2025-08-28', 1799.00);
SELECT * FROM Orders;
INSERT INTO Payments
(order_id, payment_date, payment_method, amount, payment_status)
VALUES
(1, '2025-06-05', 'UPI', 3098.00, 'Completed'),
(2, '2025-06-08', 'Credit Card', 499.00, 'Completed'),
(3, '2025-06-12', 'UPI', 2499.00, 'Completed'),
(4, '2025-06-15', 'Debit Card', 7298.00, 'Completed'),
(5, '2025-06-18', 'Cash', 899.00, 'Completed'),
(6, '2025-07-02', 'UPI', 1799.00, 'Completed'),
(7, '2025-07-05', 'Credit Card', 1999.00, 'Completed'),
(8, '2025-07-10', 'UPI', 599.00, 'Completed'),
(9, '2025-07-14', 'Debit Card', 5499.00, 'Pending'),
(10, '2025-07-20', 'UPI', 3299.00, 'Completed'),
(11, '2025-08-03', 'Cash', 3999.00, 'Completed'),
(12, '2025-08-09', 'UPI', 299.00, 'Failed'),
(13, '2025-08-15', 'Credit Card', 2499.00, 'Completed'),
(14, '2025-08-21', 'UPI', 899.00, 'Completed'),
(15, '2025-08-28', 'Debit Card', 1799.00, 'Pending');
SELECT * FROM Payments;
SELECT
    c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.total_amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
ORDER BY o.order_date;
SELECT
    SUM(total_amount) AS total_revenue
FROM Orders;
SELECT
    c.city,
    SUM(o.total_amount) AS total_revenue
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC;
SELECT
    MONTHNAME(order_date) AS month_name,
    SUM(total_amount) AS monthly_revenue
FROM Orders
GROUP BY MONTH(order_date), MONTHNAME(order_date)
ORDER BY MONTH(order_date);
SELECT
    payment_status,
    COUNT(*) AS total_payments,
    SUM(amount) AS total_amount
FROM Payments
GROUP BY payment_status
ORDER BY total_payments DESC;
SELECT
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spent
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
ORDER BY total_spent DESC;
SELECT
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM Orders;
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
SHOW TABLES;
INSERT INTO Order_Items
(order_id, product_id, quantity, unit_price)
VALUES
(1, 2, 1, 2499.00),
(1, 1, 1, 599.00),
(2, 4, 1, 499.00),
(3, 2, 1, 2499.00),
(4, 6, 1, 5499.00),
(4, 3, 1, 1799.00),
(5, 9, 1, 899.00),
(6, 3, 1, 1799.00),
(7, 5, 1, 1999.00),
(8, 1, 1, 599.00),
(9, 6, 1, 5499.00),
(10, 10, 1, 3299.00),
(11, 7, 1, 3999.00),
(12, 8, 1, 299.00),
(13, 2, 1, 2499.00),
(14, 9, 1, 899.00),
(15, 3, 1, 1799.00);
SELECT * FROM Order_Items;
SELECT
    p.product_name,
    p.category,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * oi.unit_price) AS product_revenue
FROM Products p
INNER JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name, p.category
ORDER BY product_revenue DESC;
SELECT
    p.category,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * oi.unit_price) AS category_revenue
FROM Products p
INNER JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;
SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    c.registration_date
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
SELECT
    CASE
        WHEN order_count = 1 THEN 'One-time Customer'
        ELSE 'Repeat Customer'
    END AS customer_type,
    COUNT(*) AS total_customers
FROM (
    SELECT
        customer_id,
        COUNT(order_id) AS order_count
    FROM Orders
    GROUP BY customer_id
) AS customer_orders
GROUP BY customer_type;
SELECT
    customer_type,
    COUNT(*) AS total_customers,
    ROUND(AVG(total_spent), 2) AS average_spending
FROM (
    SELECT
        c.customer_id,
        CASE
            WHEN COUNT(o.order_id) = 1
            THEN 'One-time'
            ELSE 'Repeat'
        END AS customer_type,
        SUM(o.total_amount) AS total_spent
    FROM Customers c
    INNER JOIN Orders o
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
) AS customer_summary
GROUP BY customer_type;
SELECT
    c.customer_name,
    SUM(o.total_amount) AS total_spent,
    COUNT(o.order_id) AS total_orders
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC
LIMIT 3;
WITH monthly_sales AS (
    SELECT
        MONTH(order_date) AS month_number,
        MONTHNAME(order_date) AS month_name,
        SUM(total_amount) AS revenue
    FROM Orders
    GROUP BY MONTH(order_date), MONTHNAME(order_date)
)
SELECT
    month_name,
    revenue,
    LAG(revenue) OVER (ORDER BY month_number) AS previous_month_revenue,
    revenue - LAG(revenue) OVER (ORDER BY month_number) AS revenue_change
FROM monthly_sales
ORDER BY month_number;
SELECT
    p.category,
    SUM(oi.quantity * oi.unit_price) AS category_revenue,
    ROUND(
        SUM(oi.quantity * oi.unit_price) * 100.0 /
        (SELECT SUM(quantity * unit_price)
         FROM Order_Items),
        2
    ) AS revenue_percentage
FROM Products p
INNER JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY revenue_percentage DESC;
SELECT
    product_name,
    product_revenue,
    RANK() OVER (ORDER BY product_revenue DESC) AS revenue_rank
FROM (
    SELECT
        p.product_name,
        SUM(oi.quantity * oi.unit_price) AS product_revenue
    FROM Products p
    INNER JOIN Order_Items oi
    ON p.product_id = oi.product_id
    GROUP BY p.product_id, p.product_name
) AS product_summary;
SELECT
    product_name,
    category,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 10 THEN 'Critical Stock'
        WHEN stock_quantity <= 30 THEN 'Low Stock'
        ELSE 'Healthy Stock'
    END AS stock_status
FROM Products
ORDER BY stock_quantity ASC;
SELECT
    p.product_id,
    p.product_name,
    p.category,
    p.stock_quantity
FROM Products p
LEFT JOIN Order_Items oi
ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;
SELECT
    DAYNAME(order_date) AS day_name,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_revenue
FROM Orders
GROUP BY DAYOFWEEK(order_date), DAYNAME(order_date)
ORDER BY total_revenue DESC;
SELECT
    order_id,
    order_date,
    total_amount
FROM Orders
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM Orders
)
ORDER BY total_amount DESC;
SELECT
    payment_status,
    COUNT(*) AS total_payments,
    SUM(amount) AS total_amount,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM Payments),
        2
    ) AS payment_percentage
FROM Payments
GROUP BY payment_status;
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Payments;
SELECT * FROM Order_Items;
USE sales_analysis;

SELECT
    (SELECT COUNT(*) FROM Customers) AS customers,
    (SELECT COUNT(*) FROM Products) AS products,
    (SELECT COUNT(*) FROM Orders) AS orders,
    (SELECT COUNT(*) FROM Payments) AS payments,
    (SELECT COUNT(*) FROM Order_Items) AS order_items;
    -- Project 1: Beyond Sales - Data verification completed