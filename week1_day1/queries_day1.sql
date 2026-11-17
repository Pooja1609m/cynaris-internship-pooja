
-- DAY 1: SQL FUNDAMENTALS
-- SELECT, FROM, WHERE

-- Query 1: Display all sales records
SELECT * FROM sales;

-- Query 2: Display selected columns
SELECT region, sales_amount
FROM sales;

-- Query 3: Sales greater than 1000
SELECT *
FROM sales
WHERE sales_amount > 1000;

-- Query 4: AND operator
SELECT *
FROM sales
WHERE sales_amount > 1000
AND region = 'South';

-- Query 5: OR operator
SELECT *
FROM sales
WHERE region = 'South'
OR region = 'North';

-- Query 6: NOT operator
SELECT *
FROM sales
WHERE NOT region = 'South';

-- Query 7: LIKE operator
SELECT *
FROM sales
WHERE product LIKE 'A%';

-- Query 8: IN operator
SELECT *
FROM sales
WHERE region IN ('South', 'North');

-- Query 9: BETWEEN operator
SELECT *
FROM sales
WHERE sales_amount BETWEEN 500 AND 2000;

-- Query 10: IS NULL operator
SELECT *
FROM sales
WHERE region IS NULL;
