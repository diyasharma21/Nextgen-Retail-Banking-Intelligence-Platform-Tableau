USE rbip;

SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS Customer_Name,
    ROUND(SUM(t.amount_usd),2) AS Total_Spent
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
ORDER BY Total_Spent DESC
LIMIT 10;

SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS Customer_Name,
    COUNT(t.transaction_id) AS Total_Transactions
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
ORDER BY Total_Transactions DESC
LIMIT 10;

SELECT
    CASE
        WHEN interest_rate < 5 THEN 'Low Interest'
        WHEN interest_rate BETWEEN 5 AND 10 THEN 'Medium Interest'
        ELSE 'High Interest'
    END AS Interest_Category,
    COUNT(*) AS Total_Loans,
    ROUND(SUM(loan_amount),2) AS Total_Loan_Amount
FROM loans
GROUP BY Interest_Category;

SELECT
    CASE
        WHEN balance_usd >= 150000 THEN 'High Value'
        WHEN balance_usd >= 50000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS Customer_Category,
    COUNT(*) AS Total_Accounts,
    ROUND(AVG(balance_usd),2) AS Average_Balance
FROM accounts
GROUP BY Customer_Category;

SELECT
    YEAR(transaction_date) AS Transaction_Year,
    ROUND(AVG(amount_usd),2) AS Average_Transaction
FROM transactions
GROUP BY YEAR(transaction_date)
ORDER BY Transaction_Year;

SELECT
    customer_id,
    loan_amount
FROM loans
WHERE loan_amount >
(
    SELECT AVG(loan_amount)
    FROM loans
)
ORDER BY loan_amount DESC;

SELECT
    branch_name,
    manager_name,
    city,
    country
FROM branches
ORDER BY country, city;

SELECT
    account_type,
    COUNT(*) AS Total_Accounts,
    ROUND(AVG(balance_usd),2) AS Average_Balance,
    ROUND(MAX(balance_usd),2) AS Highest_Balance,
    ROUND(MIN(balance_usd),2) AS Lowest_Balance
FROM accounts
GROUP BY account_type;