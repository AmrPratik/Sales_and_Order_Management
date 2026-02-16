# CREATE VIEWS FOR REPORTING
-- View for order summary
CREATE VIEW order_summary AS
SELECT 
    o.order_id,
    c.customer_name,
    o.order_date,
    o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Product sales summary
CREATE VIEW product_sales_summary AS
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold,
    SUM(oi.quantity * oi.price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name;