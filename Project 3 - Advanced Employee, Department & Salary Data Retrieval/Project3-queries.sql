USE employeedb;
-- Step 4: Advanced Queries

-- INNER JOIN: Retrieve employees with department names
SELECT Employees.name, Departments.department_name
FROM Employees
INNER JOIN Departments ON Employees.department_id = Departments.id;

-- SELF JOIN: Find employees who were hired before another employee 
SELECT e1.name AS Employee, e2.name AS Senior, e1.hire_date
FROM Employees e1
JOIN Employees e2 ON e1.hire_date > e2.hire_date;

-- JOINING MULTIPLE TABLES: Employees, Departments, and Salaries
SELECT e.name, d.department_name, s.salary
FROM Employees e
JOIN Departments d ON e.department_id = d.id
JOIN Salaries s ON e.id = s.employee_id;

-- COMPOUND JOIN CONDITIONS: Join on multiple conditions
SELECT e.name, S.salary, s.payment_date
FROM Employees e
JOIN Salaries s
ON s.employee_id = e.id
AND s.payment_date = '2023-12-01' ;

-- IMPLICIT JOIN SYNTAX (Old-style join)
SELECT e.name, d.department_name
FROM Employees e, Departments d
WHERE e.department_id = d.id;

-- OUTER JOIN: List all employees and departments, even if there is no match
SELECT e.name, d.department_name
From Employees e
LEFT JOIN Departments d ON e.department_id = d.id;

-- LEFT JOIN (All Employees, Even Without Departments)
SELECT e.name AS Employee, e.age, e.email, d.department_name
FROM Employees e LEFT JOIN Departments d ON e.department_id = d.id;

-- RIGHT JOIN (All Departments, Even Without Employees)
SELECT e.name AS Employee, e.age, e.email, d.department_name
FROM Employees e RIGHT JOIN Departments d ON e.department_id = d.id;

-- FULL OUTER JOIN (All Employees & All Departments)
SELECT e.name AS Employee, e.age, e.email, d.department_name
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.id
UNION
SELECT e.name AS Employee, e.age, e.email, d.department_name
FROM Employees e
RIGHT JOIN Departments d ON e.department_id = d.id;

-- Debugging - See Who Is Missing Data
SELECT * FROM Employees WHERE department_id IS NULL;

-- Find departments without employees.
SELECT d.* 
FROM Departments d
LEFT JOIN Employees e ON d.id = e.department_id
WHERE e.id IS NULL;

-- OUTER JOIN BETWEEN MULTIPLE TABLES: Include employees even if salary data is missing
SELECT e.name, d.department_name, s.salary
FROM employees e	
LEFT JOIN Departments d ON e.department_id = d.id
LEFT JOIN Salaries s ON s.employee_id = e.id;

-- SELF-OUTER JOIN: Find employees who were hired after someone else (including nulls)
SELECT  e1.name AS Employee, e2.name AS Senior
FROM Employees e1
LEFT JOIN Employees e2
ON e1.hire_date > e2.hire_date;

-- USING CLAUSE: Join Employees and Departments using id
SELECT e.name, d.department_name
FROM Employees e 
JOIN Departments d USING (id);

-- NATURAL JOIN: Automatically joins tables with the same column names
SELECT name, department_name
FROM Employees 
NATURAL JOIN Departments;

-- CROSS JOIN: Every employee with every departme
SELECT e.name, d.department_name
FROM Employees e
CROSS JOIN Departments d;

-- UNION: Combine two employee lists (example: active employees vs. past employees)
SELECT name, 'Active' AS Status FROM Employees
UNION
SELECT 'JOHN Doe', 'Past Employee';