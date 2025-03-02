# Basic_SQL_Projects

# Project 1: Employee Management Database

Project Overview
This is a simple Employee Management System built using MySQL.

Features
- Create an employees table with constraints (age check, salary validation).
- Perform CRUD operations (INSERT, SELECT, UPDATE, DELETE).
- Use SQL queries for filtering and sorting data.

📂 Files

. Project1-schema.sql – Defines database structure.
. Project1-data.sql – Inserts sample employee records.
. Project1-queries.sql – Includes SELECT, UPDATE, DELETE commands.

# Project 2: Employee & Department Management System

Project Overview
This project expands on EmployeeDB by introducing a Departments table and establishing relationships between employees and departments using foreign keys.

Features
- Two relational tables: Employees & Departments.
- Foreign key constraint to link employees to their departments.
- Advanced filtering using WHERE, LIKE, IN, and ORDER BY.

📂 Files

. Project2-schema.sql – Creates tables with relationships.
. Project2-data.sql – Inserts sample employees and department records.
. Project2-queries.sql – Includes advanced filtering.

# Advanced Employee & Department Data Retrieval


Project Overview
This project sets up a relational database for managing employee records, including their departments, salaries, and hiring details. It demonstrates various SQL JOIN operations, self-joins, and advanced query techniques to retrieve meaningful insights from employee data.

Features

1. Basic Joins
- INNER JOIN: Retrieve employees along with their department names
- LEFT JOIN: List all employees, including those without departments
- RIGHT JOIN: Show all departments, even if no employees are assigned
- FULL OUTER JOIN (Simulated using UNION)
2. Self-Joins
- Find employees hired before another employee
- Compare salaries within the company
3. Complex Queries
- Joining across multiple tables: Retrieve employee names, department names, and salary details
- Using JOIN with conditions: Filter employees hired after a certain date
- CROSS JOIN: Generate all possible combinations of employees and departments

📂 Files

. Project3-schema.sql – Creates tables with relationships.
. Project3-data.sql – Inserts sample employees, departments and Salaries records.
. Project3-queries.sql –  Includes advanced JOIN operations.
