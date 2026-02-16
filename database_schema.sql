CREATE DATABASE sales_order_db;
USE sales_order_db;

CREATE TABLE customers
(customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(100) NOT NULL,
email VARCHAR(50) UNIQUE,
phone VARCHAR(14),
city VARCHAR(50),
created_at DATE
);

CREATE TABLE products
(product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(50),
price DECIMAL(10,2) NOT NULL
); 

CREATE TABLE orders
(order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
order_date DATE,
total_amount INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items
(order_id INT,
product_id INT,
quantity INT NOT NULL,
price DECIMAL(10,2),
PRIMARY KEY(order_id, product_id),
FOREIGN KEY(order_id) REFERENCES orders(order_id),
FOREIGN KEY(product_id) REFERENCES products(product_id)
);

CREATE TABLE payments
(product_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
payment_date DATE,
payment_mode VARCHAR(30),
amount DECIMAL(10,2),
FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE inventory 
(product_id INT PRIMARY KEY,
stock_quantity INT,
last_updated DATE,
FOREIGN KEY (product_id) REFERENCES products(product_id)
);



















