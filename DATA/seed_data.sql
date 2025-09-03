-- Seed random valid data in the schema
-- Run schema.sql first 

BEGIN;

INSERT INTO customers (customer_id, name, region) VALUES
	(1, 'Ava Mitchell', 'West'),
	(2, 'Liam Thompson', 'Southwest'),
	(3, 'Olivia Ramirez', 'Midwest'),
	(4, 'Noah Richardson', 'Nothwest'),
	(5, 'Emma Johnson', 'West'),
	(6, 'William Chen', 'Southwest'),
	(7, 'Sophia Davis', 'Midwest'),
	(8, 'James Anderson', 'Nothwest'),
	(9, 'Mia Martinez', 'West'),
	(10, 'Benjamin Lewis', 'Southwest');


 INSERT INTO products (product_id, category, price) VALUES
	(1, 'Shoes', 79.99),
	(2, 'Polo', 34.50),
	(3, 'Hoodie', 49.00),
	(4, 'Suit', 299.99),
	(5, 'Sweater', 59.95),
	(6, 'Hat', 19.99),
	(7, 'Gloves', 24.99),
	(8, 'Coat', 149.00),
	(9, 'Shoes', 109.50),
	(10, 'Hoodie', 64.90);

INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date) VALUES
	(1, 1, 1, 2, '2024-01-15'),
	(2, 2, 4, 1, '2024-02-03'),
	(3, 3, 3, 3, '2024-02-18'),
	(4, 4, 2, 2, '2024-03-07'),
	(5, 5, 5, 1, '2024-03-21'),
	(6, 6, 8, 1, '2024-04-10'),
	(7, 7, 6, 2, '2024-04-25'),
	(8, 8, 7, 4, '2024-05-12'),
	(9, 9, 9, 1, '2024-06-01'),
	(10, 10, 10, 2, '2024-06-18'),
	(11, 3, 1, 1, '2024-07-05'),
	(12, 5, 8, 1, '2024-08-14'),
	(13, 2, 6, 3, '2024-09-02'),
	(14, 7, 4, 1, '2024-10-09'),
	(15, 9, 5, 2, '2024-11-20');

COMMIT;