-- Step 3: Insert Sample Data
INSERT INTO Departments (department_name) VALUES
('HR'), ('IT'), ('Finance'), ('Marketing'), ('Sales');

INSERT INTO Employees (name, age, department_id, email, hire_date) VALUES 
('Alice Johnson', 30, 1, 'alice@company.com', '2022-05-15'),
('Bob Smith', 28, 2, 'bob@company.com', '2023-02-10'),
('Charlie Brown', 35, 3, 'charlie@company.com', '2021-09-25'),
('David Lee', 24, 2, 'david@company.com', '2022-07-20'),
('Eva Green', 29, NULL, 'eva@company.com', '2023-06-01');

INSERT INTO Salaries (employee_id, salary, payment_date) VALUES
(1, 50000.00, '2023-12-01'),
(2, 60000.00, '2023-12-01'),
(3, 70000.00, '2023-12-01'),
(4, 55000.00, '2023-12-01'),
(5, 48000.00, '2023-12-01');