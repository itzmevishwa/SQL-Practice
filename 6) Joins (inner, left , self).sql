/*  6) Joins (inner, left , self) */
-- -------------------------------------------------

-- Show employee name and department name.
select e.employee_name,
d.department_name
from employees e
Inner join departments d
on e.department_id=d.department_id;

-- Show employee name, salary, and department location.
select e.employee_name,
e.salary,
d.location
from employees e
inner join departments d
on e.department_id = d.department_id

-- Show total orders per employee (INNER JOIN only)
select count(*) as total_orders,
e.employee_name,
e.employee_id
from orders o 
inner join employees e
on o.employee_id = e.employee_id
group by e.employee_id , e.employee_name

-- Show all employees and their departments (even if NULL)
select e.employee_name,
d.department_name
from employees e
left join departments d
on e.department_id = d.department_id

-- Show employee name and their manager name
select e.employee_name as employee_name,
m.employee_name as manager_name
from employees e
left join employees m
on e.manager_id = m.employee_id

-- Show employees who have a manager
select e.employee_name as employee_name,
m.employee_name as manager_name
from employees e
inner join employees m
on m.employee_id = e.manager_id

-- Show employees who are managers
select distinct m.employee_id,
m.employee_name as managers
from employees e
join employees m
on e.manager_id = m.employee_id