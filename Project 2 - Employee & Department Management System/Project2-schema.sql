-- Step 1: Calling the Database
USE employeedb;

-- Step 2: Create Tables
CREATE TABLE Departments (
id INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(100) NOT NULL
);
CREATE TABLE Employees1 (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
age INT CHECK (age >= 18),
department_id INT,
salary DECIMAL (10,2) CHECK (salary > 0),
email VARCHAR(100) UNIQUE,
hire_date DATE,
FOREIGN KEY (department_id) REFERENCES Departments(id)
);

