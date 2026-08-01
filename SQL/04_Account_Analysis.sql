/*
==========================================================
Project : NextGen Retail Banking Intelligence Platform
Module  : 04 - Account Analysis
==========================================================
*/

USE rbip;

-- 1. Number of accounts by account type
SELECT
    account_type,
    COUNT(*) AS Total_Accounts
FROM accounts
GROUP BY account_type
ORDER BY Total_Accounts DESC;

-- 2. Total balance by account type
SELECT
    account_type,
    ROUND(SUM(balance_usd),2) AS Total_Balance
FROM accounts
GROUP BY account_type
ORDER BY Total_Balance DESC;

-- 3. Average balance by account type
SELECT
    account_type,
    ROUND(AVG(balance_usd),2) AS Average_Balance
FROM accounts
GROUP BY account_type
ORDER BY Average_Balance DESC;

-- 4. Top 10 highest balance accounts
SELECT
    account_id,
    customer_id,
    account_type,
    balance_usd
FROM accounts
ORDER BY balance_usd DESC
LIMIT 10;

-- 5. Top 10 lowest balance accounts
SELECT
    account_id,
    customer_id,
    account_type,
    balance_usd
FROM accounts
ORDER BY balance_usd ASC
LIMIT 10;

-- 6. Number of accounts opened each year
SELECT
    YEAR(open_date) AS Open_Year,
    COUNT(*) AS Accounts_Opened
FROM accounts
GROUP BY Open_Year
ORDER BY Open_Year;