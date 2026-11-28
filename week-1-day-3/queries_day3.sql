
-- SQL FUNDAMENTALS - WEEK 1 DAY 3
-- Topic: SQL Aggregations - GROUP BY and HAVING

USE sql_day3;

-- QUERY 1: Count total sales
SELECT COUNT(*) AS total_sales
FROM sales;

-- QUERY 2: Calculate total revenue
SELECT SUM(sales_amount) AS total_revenue
FROM sales;

-- QUERY 3: Calculate average sales
SELECT AVG(sales_amount) AS average_sales
FROM sales;

-- QUERY 4: Find highest and lowest sales
SELECT
    MAX(sales_amount) AS highest_sale,
    MIN(sales_amount) AS lowest_sale
FROM sales;

-- QUERY 5: Calculate sales by region
SELECT
    region,
    COUNT(*) AS number_of_sales,
    SUM(sales_amount) AS total_revenue
FROM sales
GROUP BY region;

-- QUERY 6: Calculate sales by category
SELECT
    category,
    SUM(sales_amount) AS total_sales,
    AVG(profit) AS average_profit
FROM sales
GROUP BY category;

-- QUERY 7: Calculate monthly sales
SELECT
    DATE_FORMAT(sale_date, '%Y-%m') AS sales_month,
    SUM(sales_amount) AS monthly_revenue
FROM sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
ORDER BY sales_month;

-- QUERY 8: Filter categories using HAVING
SELECT
    category,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY category
HAVING SUM(sales_amount) > 50000;

-- QUERY 9: Calculate running total using a window function
SELECT
    sale_id,
    sale_date,
    sales_amount,
    SUM(sales_amount) OVER (
        ORDER BY sale_date, sale_id
    ) AS running_total
FROM sales;
