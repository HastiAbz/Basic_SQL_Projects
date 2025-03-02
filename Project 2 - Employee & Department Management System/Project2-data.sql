-- Step 3: Insert Data
INSERT INTO Departments (department_name) VALUES
('HR'), ('IT'), ('Finance'), ('Marketing'), ('Sales');

INSERT INTO Employees1 (name, age, department_id, salary, email, hire_date)  
VALUES 
('Alice Johnson', 30, 1, 50000.00, 'alice@company.com', '2022-05-15'),
('Bob Smith', 28, 2, 60000.00, 'bob@company.com', '2023-02-10'),
('Charlie Brown', 35, 3, 70000.00, 'charlie@company.com', '2021-09-25'),
('David Lee', 24, 2, 55000.00, 'david@company.com', '2022-07-20'),
('Eva Green', 29, NULL, 48000.00, 'eva@company.com', '2023-06-01'),
('Frank Harris', 40, 4, 65000.00, 'frank@company.com', '2019-11-05'),
('Grace Miller', 32, 5, 58000.00, 'grace@company.com', '2020-03-12'),
('Henry Adams', 45, 3, 75000.00, 'henry@company.com', '2018-08-19');

