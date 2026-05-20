/*  7) Subqueries */
-- -------------------------------------------------

-- Find employees who earn more than the average salary.
select salary,
employee_name
from employees
where salary > (
select avg(salary) as average_salary
from employees
);

-- Find employees who earn less than the average salary.
select employee_name,
salary
from employees 
where salary <(
select avg(salary) as average_salary
from employees
);

-- Find employees with the maximum salary.

select employee_name,
salary
from employees
where salary =(
select max(salary) as maximum_salary
from employees
);

-- Find employees with the minimum salary.
select employee_name,
salary
from employees
where salary = (
select min(salary) as minimum_salary
from employees
);

-- Find employees who have placed at least one order.
select employee_id,
employee_name
from employees
where employee_id IN (
select employee_id
from orders
);

-- Find employees who have not placed any orders.
select employee_id,
employee_name
from employees
where employee_id NOT IN (
select employee_id
from orders
);

-- Find departments that have employees.
SELECT
    department_id,
    department_name
FROM Departments
WHERE department_id IN (
    SELECT department_id
    FROM Employees
    WHERE department_id IS NOT NULL
);

-- Find the second highest salary.
select employee_id,
employee_name,
salary
from employees
where salary = ( select
max(salary)
from employees
where salary< (select
max(salary)
from employees
)
);