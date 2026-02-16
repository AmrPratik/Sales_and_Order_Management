# STORED PROCEDURES
-- Get orders by customer
DELIMITER $$

CREATE PROCEDURE get_orders_by_customer(IN cust_id INT)
BEGIN
    SELECT 
        o.order_id,
        o.order_date,
        o.total_amount
    FROM orders o
    WHERE o.customer_id = cust_id;
END $$

DELIMITER ;

-- Insert order
DELIMITER $$

CREATE PROCEDURE place_order(
    IN cust_id INT,
    IN order_total DECIMAL(10,2)
)
BEGIN
    START TRANSACTION;

    INSERT INTO orders (customer_id, order_date, total_amount)
    VALUES (cust_id, CURDATE(), order_total);

    COMMIT;
END $$

DELIMITER ;
