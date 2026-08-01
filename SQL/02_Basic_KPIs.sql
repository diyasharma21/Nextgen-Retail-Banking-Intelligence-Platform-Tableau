/*
==========================================================
Project : NextGen Retail Banking Intelligence Platform
Module  : 02 - Basic KPIs
Author  : Diya Sharma
Database: rbip

Description:
This file contains the basic business KPI queries used
to understand the overall banking dataset.
==========================================================
*/

USE rbip;
/*---------------------------------------------------------
1. Total Customers
---------------------------------------------------------*/
SELECT COUNT(*) AS Total_Customers
FROM customers;


/*---------------------------------------------------------
2. Total Accounts
---------------------------------------------------------*/
SELECT COUNT(*) AS Total_Accounts
FROM accounts;


/*---------------------------------------------------------
3. Total Transactions
---------------------------------------------------------*/
SELECT COUNT(*) AS Total_Transactions
FROM transactions;


/*---------------------------------------------------------
4. Total Loans
---------------------------------------------------------*/
SELECT COUNT(*) AS Total_Loans
FROM loans;


/*---------------------------------------------------------
5. Total Merchants
---------------------------------------------------------*/
SELECT COUNT(*) AS Total_Merchants
FROM merchants;


/*---------------------------------------------------------
6. Total Branches
---------------------------------------------------------*/
SELECT COUNT(*) AS Total_Branches
FROM branches;


/*---------------------------------------------------------
7. Average Credit Score
---------------------------------------------------------*/
SELECT ROUND(AVG(credit_score),2) AS Average_Credit_Score
FROM customers;


/*---------------------------------------------------------
8. Highest Credit Score
---------------------------------------------------------*/
SELECT MAX(credit_score) AS Highest_Credit_Score
FROM customers;


/*---------------------------------------------------------
9. Lowest Credit Score
---------------------------------------------------------*/
SELECT MIN(credit_score) AS Lowest_Credit_Score
FROM customers;


/*---------------------------------------------------------
10. Average Account Balance
---------------------------------------------------------*/
SELECT ROUND(AVG(balance_usd),2) AS Average_Account_Balance
FROM accounts;


/*---------------------------------------------------------
11. Highest Account Balance
---------------------------------------------------------*/
SELECT MAX(balance_usd) AS Highest_Account_Balance
FROM accounts;


/*---------------------------------------------------------
12. Lowest Account Balance
---------------------------------------------------------*/
SELECT MIN(balance_usd) AS Lowest_Account_Balance
FROM accounts;