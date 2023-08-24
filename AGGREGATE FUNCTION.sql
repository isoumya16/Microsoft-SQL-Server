--Write an SQL query to find the second highest salary in the "Salary" table without using the LIMIT clause

-- Create the Employee table
CREATE TABLE Employee (
    emp_id VARCHAR(10),
    emp_name CHAR(50),
    department CHAR(50),
    salary INT
);

-- Insert random values into the Employee table
INSERT INTO Employee (emp_id, emp_name, department, salary)
VALUES
    ('E101', 'John Doe', 'HR', 50000),
    ('E102', 'Jane Smith', 'IT', 60000),
    ('E103', 'Michael Johnson', 'Finance', 55000),
    ('E104', 'Emily Williams', 'Marketing', 52000),
    ('E105', 'David Brown', 'Operations', 58000);

-- Insert more random values
-- You can add more INSERT statements here to insert more rows

-- Check the inserted data
SELECT * FROM Employee;

--Find the second highest salary in the "Salary" table without using the LIMIT clause
SELECT salary
FROM Employee
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE salary < (
        SELECT MAX(salary)
        FROM Employee
    )
);

