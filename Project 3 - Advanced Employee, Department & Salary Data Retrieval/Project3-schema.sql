-- Step 1: Create Database
CREATE DATABASE EmployeeDB;
USE EmployeeDB;

-- Step 2: Create Tables (Schema)
CREATE TABLE Departments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 18),
    department_id INT,
    email VARCHAR(100) UNIQUE,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);

CREATE TABLE Salaries (
    employee_id INT,
    salary DECIMAL(10,2) CHECK (salary > 0),
    payment_date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employees(id)
);