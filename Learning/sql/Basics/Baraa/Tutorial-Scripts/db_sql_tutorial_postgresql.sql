-- PostgreSQL version of db_sql_tutorial
-- Converted from MariaDB syntax

-- create a new database db_sql_tutorial
DROP DATABASE IF EXISTS db_sql_tutorial;
CREATE DATABASE db_sql_tutorial;

-- Connect to the database
\c db_sql_tutorial

-- create table customers
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    country VARCHAR(50),
    score INTEGER
);

-- Insert customers data
INSERT INTO customers (customer_id, first_name, last_name, country, score) 
VALUES 
    (1, 'Maria', 'Cramer', 'Germany', 350),
    (2, 'John', 'Steel', 'USA', 900),
    (3, 'Georg', ' Pipps', 'UK', 750),
    (4, 'Martin', 'Müller', 'Germany', 500),
    (5, 'Peter', 'Franken', 'USA', NULL);

-- Reset sequence to continue from 5
SELECT setval('customers_customer_id_seq', 5);

-- create table orders
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date DATE,
    quantity INTEGER
);

-- Insert orders data
INSERT INTO orders (order_id, customer_id, order_date, quantity) 
VALUES 
    (1001, 1, '2021-01-11', 250),
    (1002, 2, '2021-04-05', 1150),
    (1003, 3, '2021-06-18', 500),
    (1004, 6, '2021-08-31', 750);

-- Reset sequence to continue from 1004
SELECT setval('orders_order_id_seq', 1004);

-- create table employees
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    emp_country VARCHAR(50),
    salary INTEGER
);

-- Insert employees data
INSERT INTO employees (emp_id, first_name, last_name, emp_country, salary) 
VALUES 
    (1, 'John', 'Steel', 'USA', 55000),
    (2, 'Ann', 'Labrune', 'France', 75000),
    (3, 'Marie', 'Bertrand', 'Brazil', 75000),
    (4, 'Georg', 'Afonso', 'UK', 75000),
    (5, 'Marie', 'Steel', 'UK', 75000);

-- Reset sequence to continue from 5
SELECT setval('employees_emp_id_seq', 5);

-- Verify data loaded
SELECT 'Customers table:' AS info;
SELECT * FROM customers;

SELECT 'Orders table:' AS info;
SELECT * FROM orders;

SELECT 'Employees table:' AS info;
SELECT * FROM employees;
