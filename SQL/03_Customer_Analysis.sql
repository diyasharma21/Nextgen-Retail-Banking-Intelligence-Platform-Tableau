/*
==========================================================
Project : NextGen Retail Banking Intelligence Platform
Module  : 03 - Customer Analysis
==========================================================
*/

USE rbip;

-- 1. Customers in each city
SELECT
    city,
    COUNT(*) AS Total_Customers
FROM customers
GROUP BY city
ORDER BY Total_Customers DESC;

-- 2. Top 10 customers with highest credit score
SELECT
    customer_id,
    first_name,
    last_name,
    credit_score
FROM customers
ORDER BY credit_score DESC
LIMIT 10;

-- 3. Top 10 customers with lowest credit score
SELECT
    customer_id,
    first_name,
    last_name,
    credit_score
FROM customers
ORDER BY credit_score ASC
LIMIT 10;

-- 4. Number of customers by registration year
SELECT
    YEAR(created_at) AS Registration_Year,
    COUNT(*) AS Total_Customers
FROM customers
GROUP BY Registration_Year
ORDER BY Registration_Year;