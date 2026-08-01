USE rbip;

SHOW TABLES;

DESCRIBE customers;
DESCRIBE accounts;
DESCRIBE cards;
DESCRIBE loans;
DESCRIBE merchants;
DESCRIBE branches;
DESCRIBE transactions;

SELECT * FROM customers LIMIT 10;
SELECT * FROM accounts LIMIT 10;
SELECT * FROM cards LIMIT 10;
SELECT * FROM loans LIMIT 10;
SELECT * FROM merchants LIMIT 10;
SELECT * FROM branches LIMIT 10;
SELECT * FROM transactions LIMIT 10;

SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM accounts;
SELECT COUNT(*) FROM loans;
SELECT COUNT(*) FROM transactions;
