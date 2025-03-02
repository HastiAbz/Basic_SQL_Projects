-- STEP 4: Retrieve Employee Data
SELECT COUNT(*) FROM employees;
SELECT * FROM employees;
SELECT * FROM employees WHERE department = 'BDM';
-- STEP 5: Update Employee Data
UPDATE employees
SET salary = 95000.00
WHERE name = 'JOHN Ho';
SELECT * FROM employees;
-- STEP 6: Delete Employee Records
DELETE FROM employees WHERE age < 45;
-- STEP 7: Viewing Existing Databases
SHOW DATABASES;
-- Step 8: Drop the Database (Use with Caution!)
DROP DATABASE EmployeeDB;
