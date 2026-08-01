<div align="center">

# 🏦 NextGen Retail Banking Intelligence Platform

### Executive Business Intelligence Dashboard using SQL, MySQL & Tableau

<p>
<img src="Dashboard Image.png" width="100%" alt="Retail Banking Dashboard">
</p>

![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Database-blue?style=for-the-badge)
![Business Intelligence](https://img.shields.io/badge/Business-Intelligence-6B4A86?style=for-the-badge)

</div>

---

# 📖 Project Overview

The **NextGen Retail Banking Intelligence Platform** is an Executive Business Intelligence solution developed using **MySQL**, **SQL**, and **Tableau**.

The project transforms raw retail banking data into meaningful business insights through SQL-based analysis, KPI generation, relational database design, and interactive Tableau dashboards.

It demonstrates an end-to-end Business Intelligence workflow covering:

- Relational Database Design
- Data Exploration
- SQL Analysis
- KPI Development
- Dashboard Design
- Business Intelligence Reporting
- Data Storytelling

---

# 🎯 Project Objectives

- Analyze retail banking operations using SQL.
- Design a normalized relational database.
- Generate business KPIs for executive reporting.
- Visualize banking insights using Tableau.
- Enable data-driven decision-making through interactive dashboards.

---

# 🏛 Database Schema (ER Diagram)

The project is built on a normalized relational database consisting of multiple interconnected banking entities.

The Entity Relationship Diagram (ERD) illustrates how customers, accounts, transactions, loans, merchants, branches, and cards are connected using primary and foreign keys.

<p align="center">
<img src="ER Diagram.png" width="100%" alt="Retail Banking ER Diagram">
</p>

---

# 🗄 Database Design

The database contains the following core entities:

- 👤 Customers
- 💳 Accounts
- 💰 Transactions
- 🏦 Loans
- 💳 Cards
- 🛒 Merchants
- 🏢 Branches

### Entity Relationships

- One Customer → Multiple Accounts
- One Customer → Multiple Loans
- One Account → Multiple Transactions
- Transactions → Linked to Merchants
- Customers → Assigned to Branches
- Cards → Issued against Customer Accounts

The normalized schema minimizes redundancy while maintaining referential integrity, enabling efficient SQL joins and analytical reporting.

---

# 🔄 Project Workflow

```text
CSV Dataset
      │
      ▼
MySQL Database
      │
      ▼
Entity Relationship Design (ERD)
      │
      ▼
SQL Data Exploration
      │
      ▼
Business KPI Generation
      │
      ▼
Data Analysis
      │
      ▼
Tableau Dashboard
      │
      ▼
Business Insights
```

The project workflow includes:

1. Designing the relational database schema.
2. Importing banking datasets into MySQL.
3. Exploring and validating the data.
4. Writing SQL queries for analysis and KPI generation.
5. Connecting processed data to Tableau.
6. Building an executive dashboard.
7. Publishing the complete BI solution on GitHub.

---

# 🚀 Dashboard Features

- 📊 Executive KPI Dashboard
- 👥 Customer Acquisition Trend
- 💳 Distribution of Accounts by Type
- 💰 Average Balance by Account Type
- 📈 Annual Transaction Volume
- 🏦 Loan Portfolio Distribution
- ⭐ Top 10 Customers by Total Balance

---

# 📈 Key Performance Indicators (KPIs)

- Total Customers
- Total Accounts
- Total Transactions
- Total Loans
- Average Account Balance

---

# 📊 Dashboard Preview

<p align="center">
<img src="Dashboard Image.png" width="100%">
</p>

---

# 💼 Business Questions Answered

This dashboard helps answer important business questions such as:

- Which account type has the highest number of customers?
- How has customer acquisition changed over time?
- Which customers maintain the highest balances?
- What is the yearly transaction trend?
- Which loan category contributes the most to the overall portfolio?
- Which account type has the highest average balance?
- Which customers are the most valuable to the bank?

---

# 🛠 Tech Stack

| Technology | Purpose |
|------------|---------|
| Tableau | Interactive Dashboard Development |
| MySQL | Relational Database |
| SQL | Data Analysis & KPI Generation |
| ER Diagram | Database Design |
| CSV | Dataset |

---

# 📂 Repository Structure

```text
NextGen-Retail-Banking-Intelligence-Platform
│
├── Retail_Banking_Executive_Dashboard.twbx
├── dashboard.png
├── ER_Diagram.png
├── README.md
│
├── Dataset
│   ├── customers.csv
│   ├── accounts.csv
│   ├── loans.csv
│   ├── cards.csv
│   ├── merchants.csv
│   ├── branches.csv
│   └── transactions.csv
│
└── SQL
    ├── 01_Data_Exploration.sql
    ├── 02_Basic_KPIs.sql
    ├── 03_Customer_Analysis.sql
    ├── 04_Account_Analysis.sql
    ├── 05_Transaction_Analysis.sql
    ├── 06_Loan_Analysis.sql
    ├── 07_Merchant_Analysis.sql
    ├── 08_Advanced_Joins.sql
    ├── 09_Window_Functions.sql
    ├── 10_Common_Table_Expressions.sql
    └── 11_Business_Case_Queries.sql
```

---

# 📂 Repository Contents

- 📊 Tableau Dashboard Workbook
- 🗄 Relational Database Schema
- 📝 SQL Analysis Scripts
- 📁 Banking Datasets
- 🖼 Dashboard Screenshot
- 🏛 Entity Relationship Diagram
- 📖 Project Documentation

---

# 📊 Dashboard Visualizations

- Distribution of Accounts by Type
- Average Balance by Account Type
- Customer Acquisition Trend
- Annual Transaction Volume
- Loan Portfolio Distribution
- Top 10 Customers by Total Balance

---

# 💡 SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- Aggregate Functions
- INNER JOIN
- LEFT JOIN
- Common Table Expressions (CTEs)
- Window Functions
- CASE Statements
- Subqueries

---

# 🎯 Skills Demonstrated

- SQL Query Writing
- MySQL
- Relational Database Design
- Entity Relationship Diagram (ERD)
- Primary & Foreign Keys
- SQL Joins
- Data Exploration
- KPI Development
- Business Intelligence
- Tableau Dashboard Development
- Data Visualization
- Data Storytelling
- Executive Reporting

---

# ▶️ How to Use

1. Clone the repository.

```bash
git clone https://github.com/diyasharma21/Nextgen-Retail-Banking-Intelligence-Platform-Tableau.git
```

2. Open **Retail_Banking_Executive_Dashboard.twbx** using Tableau Desktop or Tableau Public.

3. Explore the dashboard.

4. Review the SQL scripts used for KPI generation and business analysis.

5. Refer to the ER Diagram to understand the relational database design.

---

# 🚀 Future Enhancements

- Interactive dashboard filters
- Drill-through analytics
- Branch-wise performance dashboard
- Customer segmentation
- Fraud detection analysis
- Predictive analytics using Machine Learning

---

# 👩‍💻 Author

**Diya Sharma**

B.Tech – Computer Science (Cloud Computing & Automation)

🔗 GitHub: https://github.com/diyasharma21

---

<div align="center">

### ⭐ If you found this project useful, consider giving it a Star!

</div>
