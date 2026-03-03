-- Anchor Query
WITH CTE_Emp_Hierarchy AS
(
    SELECT
        EmployeeID,
        FirstName,
        ManagerID,
        1 AS [Level]
    FROM
        Sales.Employees
    WHERE
        ManagerID IS NULL
    UNION ALL
    -- Recursive Query
    SELECT
        e.EmployeeID,
        e.FirstName,
        e.ManagerID,
        [Level] + 1
    FROM
        Sales.Employees e -- We are retrieving data from the Employees table because we don't have all the information about the employees in the CTE_Emp_Hierarchy table as we have only one row where the ManagerID is NULL
    INNER JOIN
        CTE_Emp_Hierarchy ceh
    ON
        e.ManagerID = ceh.EmployeeID --Join Condition: Employees (e) whose ManagerID = Manager's EmployeeID (1)
)

-- Main Query
SELECT *
FROM
    CTE_Emp_Hierarchy