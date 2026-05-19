/*  4) Aggregates + Groupby + Having */
-- -------------------------------------------------
-- Find total number of employees
select count(*) as total_employees
from employees

-- Find total salary of all employees
select sum(salary) as total_salary
from employees

-- Find average salary of employees
select avg(salary) as average_salary
from employees

-- Find highest salary
select max(salary) as highest_salary
from employees

-- Find lowest salary
select min(salary) as lowest salary
from employees

-- Find number of employees in each department
select 
d.department_name,
count(*) as employee_count
from employees e
join departments d
on e.department_id = d.department_id
group by d.department_name

-- . Find average salary in each department
select avg(e.salary) as average_salary,
d.department_name
from employees e
join departments d
on e.department_id = d.department_id
group by d.department_name

-- Find total salary per department
select sum(e.salary) as total_salary,
d.department_name
from employees e
join departments d
on e.department_id = d.department_id
group by d.department_name

-- Find number of employees in each city
select count(*) as total_employees,
city
from employees
group by city

-- Find average salary per city
select city,
avg(salary) as average_salary
from employees
group by city

-- Find departments with more than 2 employees
select count(*) as employees,
d.department_name
from employees e
join departments d
on e.department_id = d.department_id
group by d.department_name
having employees > 2;

-- Find departments where average salary > 70000
select d.department_name,
avg(e.salary) as average_salary
from employees e
join departments d
on e.department_id = d.department_id
group by d.department_name
having average_salary > 70000

-- Find cities with more than 2 employees
select city,
count(*) as employees
from employees
group by city
having employees > 2

-- Find departments where total salary > 150000
select d.department_name,
sum(e.salary) as total_salary
from employees e
join departments d
on e.department_id = d.department_id
group by d.department_name
having total_salary > 150000

-- Find department with highest average salary
select d.department_name,
avg(e.salary) as average_salary
from employees e
join departments d
on e.department_id = d.department_id
group by d.department_name
order by average_salary desc
limit 1

-- Find department with lowest average salary
select d.department_name,
avg(e.salary) as average_salary
from employees e
join departments d
on e.department_id = d.department_id
group by d.department_name
order by average_salary asc
limit 1

-- Find how many orders each employee handled
select count(*) as total_orders,
e.employee_name,
e.employee_id
from orders o
join employees e
on o.employee_id = e.employee_id
group by e.employee_name,e.employee_id

-- Find total order amount per employee
select sum(o.amount) as order_amount,
o.employee_id,
e.employee_name
from orders o
join employees e
on o.employee_id = e.employee_id
group by e.employee_name, o.employee_id
