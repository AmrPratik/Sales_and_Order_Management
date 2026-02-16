INSERT INTO customers(customer_name, email, phone, city, created_at)
VALUES
('Amit Sharma', 'amit@gmail.com', '9876543210', 'Mumbai', '2024-01-10'),
('Neha Verma', 'neha@gmail.com', '9876543211', 'Pune', '2024-01-15'),
('Rahul Mehta', 'rahul@gmail.com', '9876543212', 'Delhi', '2024-02-01'),
('Sneha Patil', 'sneha@gmail.com', '9876543213', 'Bangalore', '2024-02-05');

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 55000),
('Smartphone', 'Electronics', 25000),
('Headphones', 'Accessories', 2000),
('Office Chair', 'Furniture', 7000);

INSERT INTO inventory (product_id, stock_quantity, last_updated) VALUES
(1, 20, '2024-02-10'),
(2, 30, '2024-02-10'),
(3, 50, '2024-02-10'),
(4, 15, '2024-02-10');

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2024-02-12', 57000),
(2, '2024-02-13', 25000),
(3, '2024-02-14', 9000);

INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 55000),
(1, 3, 1, 2000),
(2, 2, 1, 25000),
(3, 4, 1, 7000),
(3, 3, 1, 2000);

INSERT INTO payments (order_id, payment_date, payment_mode, amount) VALUES
(1, '2024-02-12', 'Credit Card', 57000),
(2, '2024-02-13', 'UPI', 25000),
(3, '2024-02-14', 'Debit Card', 9000);

