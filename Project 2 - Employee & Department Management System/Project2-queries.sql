-- Step 4: Querying the Data

-- 1.Retrieve All Employees
SELECT * FROM Employees1;

-- 2.Retrieve Employees from the IT Department
SELECT name, salary FROM Employees1
WHERE department_id = 2;

-- 3.Retrieve Employees Earning More than 55,000
SELECT name, salary FROM employees1
WHERE salary > 55000;

-- 4.Retrieve Employees in IT or Finance Departments
SELECT name, department_id FROM employees1
WHERE department_id IN (2,3);

-- 5.Retrieve Employees Aged Between 25 and 40
SELECT name, age FROM employees1
WHERE age BETWEEN 25 AND 40;

-- 6.Retrieve Employees Whose Name Starts with 'A'
SELECT name FROM employees1
WHERE name LIKE 'A%';

-- 7.Retrieve Employees Whose Email Ends with '@company.com'
SELECT name, email FROM employees1
WHERE email LIKE '%@company.com';

-- 8.Retrieve Employees Whose Name Contains 'son'
SELECT name FROM employees1
WHERE name REGEXP 'son';

-- 9.Retrieve Employees Without a Department Assigned (NULL Values)
SELECT name FROM employees1
WHERE department_id IS NULL;

-- 10.Retrieve All Employees Sorted by Salary (Highest to Lowest)
SELECT name, salary FROM employees1
ORDER BY salary DESC;

-- 11. Retrieve the Top 3 Highest Paid Employees
SELECT name, salary FROM employees1
ORDER BY salary DESC
LIMIT 3;