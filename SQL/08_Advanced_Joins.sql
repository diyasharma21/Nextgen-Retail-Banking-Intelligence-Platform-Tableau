/*
=========================================================
NextGen Retail Banking Intelligence Platform (RBIP)
Module 8 : Advanced SQL JOINs
Author : Diya Sharma
=========================================================
*/
USE rbip;

SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS Customer_Name,
    a.account_id,
    a.account_type,
    a.balance_usd
FROM customers c
INNER JOIN accounts a
ON c.customer_id = a.customer_id
LIMIT 20;

SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS Customer_Name,
    l.loan_amount,
    l.interest_rate,
    l.start_date
FROM customers c
INNER JOIN loans l
ON c.customer_id = l.customer_id
LIMIT 20;

SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS Customer_Name,
    a.account_type,
    cd.card_type,
    cd.expiration_date
FROM customers c
INNER JOIN accounts a
ON c.customer_id = a.customer_id
INNER JOIN cards cd
ON a.account_id = cd.account_id
LIMIT 20;

SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS Customer_Name,
    t.transaction_id,
    t.amount_usd,
    t.transaction_date
FROM customers c
INNER JOIN accounts a
ON c.customer_id = a.customer_id
INNER JOIN transactions t
ON a.account_id = t.account_id
LIMIT 20;

SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS Customer_Name,
    ROUND(SUM(a.balance_usd),2) AS Total_Balance
FROM customers c
INNER JOIN accounts a
ON c.customer_id = a.customer_id
GROUP BY c.customer_id, Customer_Name
ORDER BY Total_Balance DESC
LIMIT 10;

SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS Customer_Name,
    COUNT(t.transaction_id) AS Total_Transactions,
    ROUND(SUM(t.amount_usd),2) AS Total_Spent
FROM customers c
INNER JOIN accounts a
ON c.customer_id = a.customer_id
INNER JOIN transactions t
ON a.account_id = t.account_id
GROUP BY c.customer_id, Customer_Name
ORDER BY Total_Spent DESC
LIMIT 10;

SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS Customer_Name
FROM customers c
LEFT JOIN loans l
ON c.customer_id = l.customer_id
WHERE l.loan_id IS NULL
LIMIT 20;