--Write an SQL query to retrieve the names of employees who have worked in at least three different departments.

-- Create the table
CREATE TABLE new_employee (
    emp_id INT PRIMARY KEY,
    emp_name CHAR(50),
    department CHAR(50),
    salary INT
);

-- Insert random values
INSERT INTO new_employee (emp_id, emp_name, department, salary)
VALUES
    (1, 'John Doe', 'HR', 50000),
    (2, 'Jane Smith', 'Finance', 60000),
    (3, 'Michael Johnson', 'IT', 75000),
    (4, 'Emily Brown', 'Marketing', 55000),
    (5, 'John Doe', 'Sales', 60000),
    -- Add more rows here
    (6, 'Jane Smith', 'HR', 52000),
    (7, 'Jane Smith', 'IT', 70000),
    (8, 'John Doe', 'Finance', 62000),
    (9, 'Benjamin Taylor', 'Marketing', 58000),
    (10, 'Ava Anderson', 'Sales', 59000),
	(11, 'William Davis', 'Sales', 60000),
    (12, 'Olivia Wilson', 'HR', 52000),
    (13, 'James Lee', 'IT', 70000),
    (14, 'Sophia Martinez', 'Finance', 62000),
	(15, 'Jane Smith', 'Finance', 70000)

--Select the Columns
SELECT * FROM new_employee

--Retrieving the names of employees who have worked in at least three different departments.
SELECT emp_name
FROM (
    SELECT emp_name, COUNT(DISTINCT department) AS num_departments
    FROM new_employee
    GROUP BY emp_name
    HAVING COUNT(DISTINCT department) >= 3
) AS employees_with_three_departments;

