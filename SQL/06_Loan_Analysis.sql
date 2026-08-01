/*
==========================================================
Project : NextGen Retail Banking Intelligence Platform
Module  : 06 - Loan Analysis
==========================================================
*/

USE rbip;

-- 1. Total Loan Amount
SELECT
    ROUND(SUM(loan_amount),2) AS Total_Loan_Amount
FROM loans;

-- 2. Average Loan Amount
SELECT
    ROUND(AVG(loan_amount),2) AS Average_Loan_Amount
FROM loans;

-- 3. Highest Loan Amount
SELECT
    MAX(loan_amount) AS Highest_Loan
FROM loans;

-- 4. Lowest Loan Amount
SELECT
    MIN(loan_amount) AS Lowest_Loan
FROM loans;

-- 5. Average Interest Rate
SELECT
    ROUND(AVG(interest_rate),2) AS Average_Interest_Rate
FROM loans;

-- 6. Loan Distribution by Year
SELECT
    YEAR(start_date) AS Loan_Year,
    COUNT(*) AS Total_Loans
FROM loans
GROUP BY Loan_Year
ORDER BY Loan_Year;

-- 7. Total Loan Amount by Year
SELECT
    YEAR(start_date) AS Loan_Year,
    ROUND(SUM(loan_amount),2) AS Total_Loan_Amount
FROM loans
GROUP BY Loan_Year
ORDER BY Loan_Year;

-- 8. Top 10 Highest Loans
SELECT
    loan_id,
    customer_id,
    loan_amount,
    interest_rate,
    start_date
FROM loans
ORDER BY loan_amount DESC
LIMIT 10;

-- 9. Top 10 Lowest Loans
SELECT
    loan_id,
    customer_id,
    loan_amount,
    interest_rate,
    start_date
FROM loans
ORDER BY loan_amount ASC
LIMIT 10;