USE rbip;

SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS Customer_Name,
    ROUND(SUM(a.balance_usd),2) AS Total_Balance,
    RANK() OVER (
        ORDER BY SUM(a.balance_usd) DESC
    ) AS Balance_Rank
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
GROUP BY c.customer_id, Customer_Name;

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS Customer_Name,
    ROUND(SUM(a.balance_usd), 2) AS Total_Balance,
    DENSE_RANK() OVER (
        ORDER BY SUM(a.balance_usd) DESC
    ) AS Customer_Rank
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name;
SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS Customer_Name,
    ROUND(SUM(a.balance_usd),2) AS Total_Balance,
    ROW_NUMBER() OVER (
        ORDER BY SUM(a.balance_usd) DESC
    ) AS Row_Num
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
GROUP BY c.customer_id, Customer_Name;

SELECT
    account_type,
    customer_id,
    Customer_Name,
    balance_usd,
    Rank_In_Type
FROM
(
    SELECT
        a.account_type,
        c.customer_id,
        CONCAT(c.first_name,' ',c.last_name) AS Customer_Name,
        a.balance_usd,
        ROW_NUMBER() OVER (
            PARTITION BY a.account_type
            ORDER BY a.balance_usd DESC
        ) AS Rank_In_Type
    FROM customers c
    JOIN accounts a
        ON c.customer_id = a.customer_id
) RankedCustomers
WHERE Rank_In_Type <= 5;