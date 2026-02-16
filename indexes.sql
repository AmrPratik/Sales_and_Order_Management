# INDEXES
CREATE INDEX idx_customer_id ON orders(customer_id);
CREATE INDEX idx_product_id ON order_items(product_id);
CREATE INDEX idx_order_date ON orders(order_date);