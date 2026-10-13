DROP TABLE IF EXISTS products;
CREATE TABLE products(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100),
	category VARCHAR(50),
	price NUMERIC(10,2),
	quantity INT,
	added_date DATE,
	discount_rate NUMERIC(5, 2)
);
INSERT INTO products
(product_name, category, price, quantity, added_date, discount_rate)
VALUES
('Laptop', 'Electronics', 55000.00, 10, '2026-01-15', 10.00),
('Smartphone', 'Electronics', 25000.00, 20, '2026-02-10', 8.00),
('Headphones', 'Accessories', 2500.00, 35, '2026-02-18', 5.00),
('Office Chair', 'Furniture', 8500.00, 15, '2026-03-05', 12.00),
('Keyboard', 'Accessories', 1500.00, 40, '2026-03-12', 7.50),
('Monitor', 'Electronics', 18000.00, 12, '2026-04-01', 10.00),
('Desk', 'Furniture', 12000.00, 8, '2026-04-15', 15.00),
('Mouse', 'Accessories', 800.00, 50, '2026-05-02', 5.00),
('Printer', 'Electronics', 15000.00, 7, '2026-05-20', 9.00),
('Backpack', 'Bags', 1800.00, 25, '2026-06-10', 6.00);

SELECT * FROM products;

--Total Quantity Available of all products
SELECT SUM(quantity) AS total_quantity
FROM products;


SELECT SUM(quantity) AS quantity_of_ele
FROM products
WHERE category='Electronics' AND price > 20000;

--Total Number of products

SELECT COUNT(*) AS total_products
FROM products
WHERE product_name LIKE '%phone%'


--Average price of products
SELECT AVG(price) AS average_price
FROM products;


--Average price of products with condition
SELECT AVG(price) AS average_price
FROM products
WHERE category='Accesories' OR added_date > '2024-02-01';

SELECT * FROM products;

--Maximum And Minimum price
SELECT MAX(price) AS MAX_PRICE,
	MIN(PRICE) AS MIN_PRICE
FROM products;

