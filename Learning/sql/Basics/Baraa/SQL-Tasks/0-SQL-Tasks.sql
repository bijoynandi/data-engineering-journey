-- Retrieve all data and columns from customers

SELECT *
FROM customers;

-- Retrieve all data and columns from orders

SELECT *
FROM orders;

-- Retrieve ONLY first name and country name of all customers

SELECT
    customers.first_name,
    customers.country
FROM customers;

-- List all countries of all customers without duplicates

SELECT DISTINCT
    customers.country
FROM customers;

-- Retrieve all customers where the result is sorted by score (smallest first)

SELECT *
FROM customers
ORDER BY score;

-- Retrieve all customers where the result is sorted by score (highest first)

SELECT *
FROM customers
ORDER BY score DESC;

-- Retrieve all customers, sorting the result by country (alphabetically) and then by score (highest first)

SELECT *
FROM customers
ORDER BY
    country,
    score DESC;

-- List only German customers

SELECT *
FROM customers
WHERE country = 'Germany';

-- Find all customers whose score is higher than 500

SELECT *
FROM customers
WHERE score > 500;

-- Find all customers whose score is less than 500

SELECT *
FROM customers
WHERE score < 500;

-- Find all customers whose score is less than or equal to 500

SELECT *
FROM customers
WHERE score <= 500;

-- Find all customers whose score is higher than or equal to 500

SELECT *
FROM customers
WHERE score >= 500;

-- Find all non-German customers

SELECT *
FROM customers
WHERE country != 'Germany';

-- Find all customers who come from Germany AND whose score is less than 400

SELECT *
FROM customers
WHERE country = 'Germany'
AND score < 400;

-- Find all customers who come from Germany OR whose score is less than 400

SELECT *
FROM customers
WHERE country = 'Germany'
OR score < 400;

-- Find all customers whose score is NOT less than 400

SELECT *
FROM customers
WHERE NOT score < 400;

-- Find all customers whose score falls in the range between 100 and 500

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500;

-- Find all customers whose ID is equal to 1, 2 or 5

SELECT *
FROM customers
WHERE customer_id IN (1, 2, 5);

-- Find all customers whose first name starts with M

SELECT *
FROM customers
WHERE first_name LIKE 'M%';

-- Find all customers whose first name ends with n

SELECT *
FROM customers
WHERE first_name LIKE '%n';

-- Find all customers whose first name contains r

SELECT *
FROM customers
WHERE first_name LIKE '%r%';

SELECT *
FROM customers
WHERE first_name LIKE '__r%';

-- List customer ID, first name, order ID, quantity. Exclude the customers who have not placed any orders

SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id;

-- List customer ID, first name, order ID, quantity. Include the customers who have not placed any orders

SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id;

-- List customer ID, first name, order ID, quantity. Include all orders, regardless of whether there is a matching customer

SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id;

-- List customer ID, first name, order ID, quantity. Include everything! All customer and all orders

SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
UNION
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id;

-- List first name, last name and country of all persons from customers and employees

SELECT
    customers.first_name,
    customers.last_name,
    customers.country
FROM customers
UNION
SELECT
    employees.first_name,
    employees.last_name,
    employees.emp_country
FROM employees;

-- Find the total number of customers

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(customers.customer_id) AS total_customers
FROM customers;

-- Find the total quantity of all orders

SELECT SUM(orders.quantity) AS sum_quantity
FROM orders;

-- Find the average score of all customers

SELECT AVG(customers.score) AS avg_score
FROM customers;

-- Find the highest score of all customers

SELECT MAX(score) AS max_score
FROM customers;

-- Find the lowest score of all customers

SELECT MIN(score) AS min_score
FROM customers;

-- Find the earliest and latest order dates

SELECT MIN(orders.order_date) AS min_order_date
FROM orders;

SELECT MAX(orders.order_date) AS max_order_date
FROM orders;

-- List all customer names, where the name is combination of first name and last name

SELECT
    CONCAT(first_name, ' ', last_name) AS customer_name
FROM customers;

-- List the first name of all customers in uppercase

SELECT
    UPPER(customers.first_name) AS upper_first_name,
    LOWER(first_name) AS lower_first_name
FROM customers;

-- List all last names of all customers and remove all the white spaces in the names

SELECT
    TRIM(customers.last_name) AS clean_last_name
FROM customers;

-- Find the length of last name of all customers

SELECT
    last_name,
    LENGTH(customers.last_name) AS len_last_name,
    TRIM(customers.last_name) AS clean_last_name,
    LENGTH(TRIM(customers.last_name)) AS clean_len_last_name
FROM customers;

-- Subtract 3 characters from the last name of all customers, starting from the 2nd position

SELECT
    last_name,
    SUBSTRING(customers.last_name, 2, 3) AS sub_last_name
FROM customers;

-- Find the total number of customers for each country

SELECT
    country,
    COUNT(*) AS total_customers
FROM customers
GROUP BY country;

-- Find the total number of customers for each country and sort the result by total (lowest first)

SELECT
    customers.country,
    COUNT(*) AS total_customers
FROM customers
GROUP BY country
ORDER BY total_customers;

-- Find the highest score of customers for each country

SELECT
    customers.country,
    MAX(customers.score) AS max_score
FROM customers
GROUP BY country;

-- Find the total number of customers for each country and only include countries that have more than 1 customer

SELECT
    customers.country,
    COUNT(*) AS total_customers
FROM customers
GROUP BY country
HAVING COUNT(*) > 1;

-- Find all orders placed from customers whose score higher than 500 using the customer ID

SELECT *
FROM orders
WHERE customer_id IN (
    SELECT
        customer_id
    FROM customers
    WHERE score > 500
    );

-- Using EXISTS

SELECT *
FROM orders AS o
WHERE EXISTS(
    SELECT 1
    FROM customers AS c
    WHERE c.customer_id = o.customer_id
    AND score > 500
);

-- Structure of table customer

DESCRIBE customers;

-- Insert new customer Anna Nixon from UK

INSERT INTO customers
VALUES (DEFAULT, 'Anna', 'Nixon', 'UK', NULL);

SELECT *
FROM customers;

-- Insert new customer Max Lang

INSERT INTO customers
(first_name, last_name)
VALUES ('Max', 'Lang');

SELECT *
FROM customers;

-- Change the country of customer ID 6 to Germany

UPDATE customers
SET country = 'Germany'
WHERE customer_id = 7;

SELECT *
FROM customers;

-- Change the score of the customer Anna to 100 and change her country from UK to USA

UPDATE customers
SET country = 'USA',
    score = 100
WHERE customer_id = 6;

SELECT *
FROM customers;

-- Delete both new customers Anna and Max from our database

DELETE FROM customers
where customer_id IN (6,7);

SELECT *
FROM customers;

-- Truncate table customer

TRUNCATE customers;

SELECT *
FROM customers;

-- Create new SQL table called persons with 4 columns; id, person_name, birth_date, and phone

CREATE TABLE db_sql_tutorial.persons (
    id INT PRIMARY KEY AUTO_INCREMENT,
    person_name VARCHAR(50) NOT NULL,
    birth_date  DATE,
    phone VARCHAR(15) NOT NULL UNIQUE
);

SELECT *
FROM persons;

DESCRIBE persons;

-- Add new column called email to table persons

ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

SELECT *
FROM persons;

DESCRIBE persons;

-- Drop the new table persons from database

DROP TABLE persons;