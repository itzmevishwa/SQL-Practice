/*  1) Baisc Querying */
-- -----------------------
-- Show all columns from the Employees table.
select*
from employees

-- Show all columns from the Departments table.
select*
from departments

-- Show all columns from the Orders table.
select*
from orders

-- Show only the employee_name column from Employees.
select employee_name
from employees

-- Show employee_name and salary.
select employee_name,
salary
from employees

-- Show employee_name, email, and city.
select employee_name,
email,
city
from employees

-- Show department_name and location from Departments.
select department_name,
location
from departments

-- Show customer_name and amount from Orders.
select customer_name,
amount
from orders

-- Rename employee_name as name.
select employee_name as name
from employees

-- Rename salary as monthly_salary.
select salary as monthly_salary
from employees

-- Show employee_name AS name and salary AS salary_amount.
select employee_name as name,
salary as salary_amoount
from employees

-- Show department_name AS dept_name.
select department_name as dept_name
from departments

-- Show amount AS order_amount.
select amount as order_amount
from orders

-- Show employee_id, employee_name, and department_id.
select employee_id,
employee_name,
department_id
from employees

-- Show order_id, customer_name, and status.
select order_id,
customer_name,
status
from orders

-- Show department_id, department_name, and location.
select department_id,
department_name,
location
from departments

-- Show all unique city names from Employees.
select distinct city
from employees

-- Show all unique department IDs from Employees.
select distinct department_id
from employees

-- Show all unique order statuses from Orders.
select distinct status
from orders

-- Show all unique customer names from Orders.
select distinct customer_name
from orders

-- Show employee_name and salary + bonus.
select employee_name,
salary + ifnull(bonus,0)
from employees;

/* Show employee_name and salary * 12 
AS annual_salary.*/
select employee_name,
salary*12 as annual_salary
from employees

-- Show employee_name and COALESCE(bonus, 0).
select employee_name,
coalesce(bonus,0)
from employees

/*Show employee_name and 
salary + COALESCE(bonus, 0) AS total_compensation.*/
select employee_name,
salary + coalesce(bonus,0) as total_compensation
from employees

-- Show TRIM(employee_name).
select trim(employee_name)
from employees;

-- Show employee names in uppercase.
select upper(employee_name)
from employees

-- Show employee names in lowercase.
select lower(employee_name)
from employees

-- Show phone numbers without hyphens.
select replace(phone, '-', '')
from employees

/* Show employee names and the length of 
each name.*/
select length(employee_name)
from employees

/*Show:
Employee name as name
Salary as salary
Annual salary as annual_salary*/
select employee_name as name,
Salary as salary,
salary*12 as annual_salary
from employees

/*Show:
Trimmed employee name
Uppercase city
Salary*/
select trim(employee_name),
upper(city),
salary
from employees

/*Show:
Employee name
Email
Bonus with NULL replaced by 0*/
select employee_name,
email,
coalesce(bonus,0)
from employees

/*Show:
Customer name
Order amount
Amount renamed as sales_amount*/
select customer_name,
amount as sales_amount
from orders;







