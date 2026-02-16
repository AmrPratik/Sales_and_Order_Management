
# Get all orders with customer details
SELECT o.order_id,c.*
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

#List products ordered from each order
SELECT o.order_id, p.product_name, oi.quantity
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

# Find total sales amount
SELECT SUM(total_amount) AS total_sales
FROM orders;

# Find top selling products
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

# Customers who placed more than one order
SELECT customer_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;
