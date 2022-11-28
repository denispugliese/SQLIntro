USE bestbuy;

-- find all products
SELECT * FROM bestbuy.products;

-- find all products that cost $1400
SELECT * FROM bestbuy.products WHERE products.Price = 1400.00;

-- find all products that cost $11.99 or $13.99
SELECT * FROM products WHERE Price = 11.99 OR Price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products WHERE NOT Price = 11.99;

-- find all products and sort them by price from greatest to least
SELECT * FROM products ORDER BY Price DESC;
-- find all employees who don't have a middle initial
SELECT * FROM employees WHERE MiddleInitial IS NULL;
-- find distinct product prices
SELECT DISTINCT price FROM products;
-- find all employees whose first name starts with the letter ‘j’
SELECT * from employees WHERE FirstName like 'j%';
-- find all Macbooks
SELECT * FROM products WHERE Name LIKE 'macbook';
-- find all products that are on sale
SELECT * FROM products WHERE OnSale;
-- find the average price of all products
SELECT AVG(price) FROM products;
-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM employees WHERE MiddleInitial IS NULL AND title = 'Geek Squad';
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest.
SELECT * FROM bestbuy.employees AS e
WHERE e.MiddleInitial IS NULL AND e.title = 'Geek Squad';
