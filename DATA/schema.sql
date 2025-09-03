DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS orders;

CREATE TABLE customers (
	customer_id INTEGER PRIMARY KEY, -- INTEGER will work just fine for my mock tables 
	name TEXT NOT NULL,
	region TEXT NOT NULL CHECK (region IN ('West', 'Southwest', 'Midwest', 'Southwest', 'Nothwest'))
);

CREATE TABLE products (
	product_id INTEGER PRIMARY KEY,
	category TEXT NOT NULL CHECK (category IN ('Shoes', 'Polo', 'Hoodie', 'Suit', 'Sweater', 'Hat', 'Gloves', 'Coat')),
	price NUMERIC NOT NULL CHECK (price > 0)
);

CREATE TABLE orders (
	order_id INTEGER PRIMARY KEY,
	customer_id INTEGER NOT NULL REFERENCES customers(customer_id),
	product_id INTEGER NOT NULL REFERENCES products(product_id), 
	quantity INTEGER NOT NULL,
	order_date DATE NOT NULL
);
