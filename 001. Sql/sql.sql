-- What is SQL?
-- SQL stands for Structured Query Language
-- SQL lets you access and manipulate databases
-- SQL became a standard of the American National Standards Institute (ANSI) in 1986, and of the International Organization
-- for Standardization (ISO) in 1987

-- What Can SQL do?
-- SQL can execute queries against a database
-- SQL can retrieve data from a database
-- SQL can insert records in a database
-- SQL can update records in a database
-- SQL can delete records from a database
-- SQL can create new databases
-- SQL can create new tables in a database
-- SQL can create stored procedures in a database
-- SQL can create views in a database
-- SQL can set permissions on tables, procedures, and views

-- Some of The Most Important SQL Commands
-- SELECT - extracts data from a database
-- UPDATE - updates data in a database
-- DELETE - deletes data from a database
-- INSERT INTO - inserts new data into a database
-- CREATE DATABASE - creates a new database
-- ALTER DATABASE - modifies a database
-- CREATE TABLE - creates a new table
-- ALTER TABLE - modifies a table
-- DROP TABLE - deletes a table
-- CREATE INDEX - creates an index (search key)
-- DROP INDEX - deletes an index


-- 1. SQL SELECT Statement

-- The SELECT statement is used to select data from a database.

-- The data returned is stored in a result table, called the result-set.

-- SELECT Syntax
-- SELECT column1, column2, ...
-- FROM table_name;

-- SELECT * FROM table_name;

-- SELECT Column Example

SELECT CustomerName, City FROM Customers;


-- The SQL SELECT DISTINCT Statement
-- The SELECT DISTINCT statement is used to return only distinct (different) values.

-- Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.

-- SELECT DISTINCT column1, column2, ...
-- FROM table_name;



-- SELECT DISTINCT Examples
-- The following SQL statement selects only the DISTINCT values from the "Country" column in the "Customers" table:

-- Example
-- SELECT DISTINCT Country FROM Customers;


-- The following SQL statement lists the number of different (distinct) customer countries:

-- SELECT COUNT(DISTINCT Country) FROM Customers;

SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers);


-- The SQL WHERE Clause
-- The WHERE clause is used to filter records.

-- The WHERE clause is used to extract only those records that fulfill a specified condition.


WHERE Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- WHERE Clause Example
-- The following SQL statement selects all the customers from the country "Mexico", in the "Customers" table:

-- Example
SELECT * FROM Customers
WHERE Country='Mexico';


-- Text Fields vs. Numeric Fields
-- SQL requires single quotes around text values (most database systems will also allow double quotes).

-- However, numeric fields should not be enclosed in quotes:


SELECT * FROM Customers
WHERE CustomerID=1;


-- Operators in The WHERE Clause

-- Operator	Description

-- =	        Equal	

SELECT * FROM Products
WHERE Price = 18;

-- >	        Greater than	

SELECT * FROM Products
WHERE Price > 30;

-- <	        Less than	

SELECT * FROM Products
WHERE Price < 30;

-- >=	        Greater than or equal	

SELECT * FROM Products
WHERE Price >= 30;

-- <=	        Less than or equal	

SELECT * FROM Products
WHERE Price <= 30;

-- <>      	Not equal. Note: In some versions of SQL this operator may be written as !=	

SELECT * FROM Products
WHERE Price <> 18;


-- BETWEEN	    Between a certain range	

SELECT * FROM Products
WHERE Price BETWEEN 50 AND 60;

-- LIKE	    Search for a pattern

SELECT * FROM Customers
WHERE City LIKE 's%';

-- IN	        To specify multiple possible values for a column

SELECT * FROM Customers
WHERE City IN ('Paris','London');



