/*
==========================================================
Project : NextGen Retail Banking Intelligence Platform
Module  : 05 - Transaction Analysis
==========================================================
*/

USE rbip;

-- 1. Total Transaction Amount
SELECT
    ROUND(SUM(amount_usd),2) AS Total_Transaction_Value
FROM transactions;


-- 2. Average Transaction Amount
SELECT
    ROUND(AVG(amount_usd),2) AS Average_Transaction_Value
FROM transactions;


-- 3. Highest Transaction
SELECT
    MAX(amount_usd) AS Highest_Transaction
FROM transactions;


-- 4. Lowest Transaction
SELECT
    MIN(amount_usd) AS Lowest_Transaction
FROM transactions;


-- 5. Number of Transactions by Year
SELECT
    YEAR(transaction_date) AS Transaction_Year,
    COUNT(*) AS Total_Transactions
FROM transactions
GROUP BY Transaction_Year
ORDER BY Transaction_Year;


-- 6. Total Transaction Value by Year
SELECT
    YEAR(transaction_date) AS Transaction_Year,
    ROUND(SUM(amount_usd),2) AS Total_Transaction_Value
FROM transactions
GROUP BY Transaction_Year
ORDER BY Transaction_Year;


-- 7. Average Transaction Value by Year
SELECT
    YEAR(transaction_date) AS Transaction_Year,
    ROUND(AVG(amount_usd),2) AS Average_Transaction_Value
FROM transactions
GROUP BY Transaction_Year
ORDER BY Transaction_Year;


-- 8. Top 10 Highest Transactions
SELECT
    transaction_id,
    account_id,
    merchant_id,
    amount_usd,
    transaction_date
FROM transactions
ORDER BY amount_usd DESC
LIMIT 10;


-- 9. Top 10 Lowest Transactions
SELECT
    transaction_id,
    account_id,
    merchant_id,
    amount_usd,
    transaction_date
FROM transactions
ORDER BY amount_usd ASC
LIMIT 10;