/*  3) ORDER BY / LIMIT (Sorting & top n results) */
-- -------------------------------------------------

-- Show all employees ordered by salary (low → high)
select employee_name,
salary
from employees
order by salary asc

-- Show all employees ordered by salary (high → low)
select employee_name,
salary
from employees
order by salary desc

-- Show employees ordered by name A → Z
select employee_name
from employees
order by employee_name  asc

-- Show employees ordered by hire_date (latest first)
select employee_name,
hire_date
from employees
order by hire_date desc

-- Show top 3 highest paid employees
select employee_name,
salary
from employees
order by salary desc
limit 3;

-- Show top 5 lowest paid employees
select employee_name,
salary
from employees
order by salary asc
Limit 5;

-- Show latest 3 hired employees
select employee_name,
hire_date
from employees
order by hire_date desc
limit 3;

-- Show first 2 employees in alphabetical order
select employee_name
from employees
order by TRIM(employee_name) asc
limit 2;

/* Show 1 highest paid employee from 
each department (basic version)*/
SELECT department_id,
       employee_name,
       salary
FROM Employees
WHERE (department_id, salary) IN (
    SELECT department_id,
           MAX(salary)
    FROM Employees
    GROUP BY department_id
);

/*Show employees ordered by:
department_id ASC
salary DESC*/

select employee_name,
department_id,
salary
from employees
order by department_id ,salary desc





