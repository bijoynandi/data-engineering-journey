-- Step 1: Create Log Table
CREATE TABLE Sales.EmployeeLogs (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    LogMessage VARCHAR(255),
    LogDate DATE
);
GO

-- Step 2: Create Trigger on Employees Table
CREATE TRIGGER trg_AfterInsertEmployee
ON Sales.Employees
AFTER INSERT
AS
BEGIN
    INSERT INTO Sales.EmployeeLogs (EmployeeID, LogMessage, LogDate)
    SELECT
        EmployeeID,
        'New Employee Added = ' + CAST(EmployeeID AS VARCHAR),
        GETDATE()
    FROM INSERTED
END;

-- Step 3: Insert New Data into Employees Table
INSERT INTO Sales.Employees
VALUES
(6, 'Maria', 'Doe', 'HR', '1988-01-12', 'F', 80000, 3);

INSERT INTO Sales.Employees
VALUES
(7, 'John', 'Smith', 'Sales', '1990-05-22', 'M', 60000, 2),
(8, 'Emily', 'Davis', 'Marketing', '1989-09-11', 'F', 70000, 1),
(9, 'Michael', 'Johnson', 'IT', '1992-03-16', 'M', 85000, 4),
(10, 'Sophia', 'Wilson', 'Sales', '1991-07-28', 'F', 65000, 2);

-- Step 4: Verify Log Table
SELECT * 
FROM 
    Sales.EmployeeLogs;

-- Step 5: Verify Employees Table
SELECT *
FROM
    Sales.Employees;