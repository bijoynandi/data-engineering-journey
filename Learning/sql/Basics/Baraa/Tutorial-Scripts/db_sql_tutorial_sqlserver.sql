-- SQL Server version of db_sql_tutorial
-- Converted from MariaDB syntax

-- Drop database if exists (SQL Server 2016+ syntax)
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'db_sql_tutorial')
BEGIN
    ALTER DATABASE db_sql_tutorial SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE db_sql_tutorial;
END
GO

-- Create database
CREATE DATABASE db_sql_tutorial;
GO

-- Switch to new database
USE db_sql_tutorial;
GO

-- Create table customers
DROP TABLE IF EXISTS customers;
GO

CREATE TABLE customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    country VARCHAR(50) NULL,
    score INT NULL
);
GO

-- Insert customers data
SET IDENTITY_INSERT customers ON;
GO

INSERT INTO customers (customer_id, first_name, last_name, country, score) 
VALUES 
    (1, 'Maria', 'Cramer', 'Germany', 350),
    (2, 'John', 'Steel', 'USA', 900),
    (3, 'Georg', ' Pipps', 'UK', 750),
    (4, 'Martin', 'Müller', 'Germany', 500),
    (5, 'Peter', 'Franken', 'USA', NULL);
GO

SET IDENTITY_INSERT customers OFF;
GO

-- Create table orders
DROP TABLE IF EXISTS orders;
GO

CREATE TABLE orders (
    order_id INT IDENTITY(1001,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NULL,
    quantity INT NULL
);
GO

-- Insert orders data
SET IDENTITY_INSERT orders ON;
GO

INSERT INTO orders (order_id, customer_id, order_date, quantity) 
VALUES 
    (1001, 1, '2021-01-11', 250),
    (1002, 2, '2021-04-05', 1150),
    (1003, 3, '2021-06-18', 500),
    (1004, 6, '2021-08-31', 750);
GO

SET IDENTITY_INSERT orders OFF;
GO

-- Create table employees
DROP TABLE IF EXISTS employees;
GO

CREATE TABLE employees (
    emp_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    emp_country VARCHAR(50) NULL,
    salary INT NULL
);
GO

-- Insert employees data
SET IDENTITY_INSERT employees ON;
GO

INSERT INTO employees (emp_id, first_name, last_name, emp_country, salary) 
VALUES 
    (1, 'John', 'Steel', 'USA', 55000),
    (2, 'Ann', 'Labrune', 'France', 75000),
    (3, 'Marie', 'Bertrand', 'Brazil', 75000),
    (4, 'Georg', 'Afonso', 'UK', 75000),
    (5, 'Marie', 'Steel', 'UK', 75000);
GO

SET IDENTITY_INSERT employees OFF;
GO

-- Verify data loaded
SELECT 'Customers table:' AS info;
SELECT * FROM customers;

SELECT 'Orders table:' AS info;
SELECT * FROM orders;

SELECT 'Employees table:' AS info;
SELECT * FROM employees;
GO
