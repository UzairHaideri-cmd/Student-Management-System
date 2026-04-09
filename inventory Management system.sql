-- Table Create (Database line hata di)
CREATE TABLE products (
id INTEGER PRIMARY KEY AUTOINCREMENT,
product_name TEXT,
quantity INTEGER
);

-- Insert Data
INSERT INTO products (product_name, quantity)
VALUES
('Pen', 50),
('Notebook', 30),
('Eraser', 20),
('Pencil', 40);

-- Show All Data
SELECT * FROM products;

-- Search by Exact Name
SELECT * FROM products
WHERE product_name = 'Pen';

-- Search using LIKE
SELECT * FROM products
WHERE product_name LIKE '%Pen%';

-- Total Items Report
SELECT SUM(quantity) AS total_items
FROM products;

-- Sort by Quantity
SELECT product_name, quantity
FROM products
ORDER BY quantity DESC;

-- Update Quantity
UPDATE products
SET quantity = 60
WHERE product_name = 'Pen';

-- Delete Item
DELETE FROM products
WHERE product_name = 'Eraser';
