-- Using the ANY Operator
SELECT
    EmployeeID,
    FirstName,
    Salary
FROM
    Sales.Employees
WHERE
    Gender = 'F'
    AND Salary > ANY 
    (
        SELECT
            Salary
        FROM
            Sales.Employees
        WHERE
            Gender = 'M'
    );

-- Using the ALL Operator
SELECT
    EmployeeID,
    FirstName,
    Salary
FROM
    Sales.Employees
WHERE
    Gender = 'F'
    AND Salary > ALL 
    (
        SELECT
            Salary
        FROM
            Sales.Employees
        WHERE
            Gender = 'M'
    );