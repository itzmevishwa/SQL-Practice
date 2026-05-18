-- =====================================================
-- SQL PRACTICE DATABASE
-- Covers all 15 core SQL topics:
-- SELECT, WHERE, ORDER BY, LIMIT
-- Aggregates, GROUP BY, HAVING
-- JOINs, Self JOIN
-- Subqueries, CTEs
-- Window Functions
-- CASE WHEN
-- Date Functions
-- NULL Handling, Duplicates, Cleaning
-- =====================================================

-- Drop existing tables (child tables first)
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;

-- =====================================================
-- 1. Departments
-- =====================================================
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);

-- =====================================================
-- 2. Employees
-- =====================================================
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    email VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    manager_id INT,
    city VARCHAR(50),
    phone VARCHAR(20),
    bonus DECIMAL(10,2),
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id)
);

-- =====================================================
-- 3. Orders
-- =====================================================
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    employee_id INT,
    customer_name VARCHAR(100),
    order_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (employee_id)
        REFERENCES Employees(employee_id)
);

-- =====================================================
-- INSERT INTO Departments
-- =====================================================
INSERT INTO Departments VALUES
(1, 'HR',      'Chennai'),
(2, 'IT',      'Bangalore'),
(3, 'Finance', 'Mumbai'),
(4, 'Sales',   'Delhi'),
(5, 'Marketing','Hyderabad');

-- =====================================================
-- INSERT INTO Employees
-- Includes:
-- - NULL values
-- - Duplicate names
-- - Leading/trailing spaces
-- - Different text cases
-- =====================================================
INSERT INTO Employees VALUES
(101, 'Vishwa',        'vishwa@gmail.com',   2, 75000, '2022-01-15', NULL, 'Chennai',   '98765-11111', 5000),
(102, 'Arun',          'arun@gmail.com',     2, 65000, '2023-03-10', 101,  'Bangalore', '98765-22222', NULL),
(103, 'Priya',         'priya@gmail.com',    1, 55000, '2021-06-20', NULL, 'Chennai',   '98765-33333', 3000),
(104, 'Karthik',       'karthik@gmail.com',  4, 50000, '2024-02-01', 106,  'Delhi',     '98765-44444', NULL),
(105, 'Sneha',         'sneha@gmail.com',    3, 80000, '2020-11-05', NULL, 'Mumbai',    '98765-55555', 7000),
(106, 'Ravi',          'ravi@gmail.com',     4, 90000, '2019-08-18', NULL, 'Delhi',     '98765-66666', 10000),
(107, 'Anitha',        'anitha@gmail.com',   2, 65000, '2023-07-25', 101,  'Bangalore', '98765-77777', NULL),
(108, 'Rahul',         'rahul@gmail.com', NULL, 40000, '2024-01-10', NULL, 'Pune',      '98765-88888', NULL),
(109, '  Vishwa  ',    'vishwa2@gmail.com',  2, 75000, '2024-05-01', 101,  'Chennai',   '98765-99999', NULL),
(110, 'PRIYA',         'priya2@gmail.com',   1, 55000, '2025-01-15', 103,  'Chennai',   '98765-00000', NULL),
(111, 'Kumar',         NULL,                 5, 60000, '2023-09-12', NULL, 'Hyderabad', NULL,           2000),
(112, 'Meena',         'meena@gmail.com',    5, 62000, '2022-12-05', 111,  'Hyderabad', '98765-12121', NULL);

-- =====================================================
-- INSERT INTO Orders
-- =====================================================
INSERT INTO Orders VALUES
(1001, 101, 'ABC Corp',  '2025-01-10', 15000, 'Completed'),
(1002, 102, 'XYZ Ltd',   '2025-01-12', 12000, 'Completed'),
(1003, 101, 'PQR Inc',   '2025-02-01', 18000, 'Pending'),
(1004, 104, 'Delta Co',  '2025-02-15', 25000, 'Completed'),
(1005, 106, 'Omega Ltd', '2025-03-01', 30000, 'Completed'),
(1006, 107, 'ABC Corp',  '2025-03-05', 10000, 'Cancelled'),
(1007, 107, 'Global Co', '2025-03-20', 15000, 'Completed'),
(1008, 102, 'Vision Ltd','2025-04-01', 22000, 'Completed'),
(1009, 111, 'Market Hub','2025-04-10', 8000,  'Pending'),
(1010, 112, 'Sales Pro', '2025-04-15', 9000,  'Completed');