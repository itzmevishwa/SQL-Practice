/*  5) Having (filtering after Groupby */
-- -------------------------------------------------

-- Find departments with more than 2 employees
select count(*) as employees,
d.department_name
from employees e
join departments d
on d.department_id = e.department_id
group by d.department_name
having employees > 2

-- Find departments where total salary > 150000
select d.department_name,
sum(e.salary) as total_salary
from employees e
join departments d
on e.department_id = d.department_id
group by d.department_name
having total_salary >150000

-- Find employees who handled more than 1 order
select count(*) as total_orders,
e.employee_name,
e.employee_id
from orders o
join employees e
on o.employee_id = e.employee_id
group by e.employee_name, e.employee_id
having total_orders >1

-- . Find customers who placed more than 1 order
SELECT
    customer_name,
    COUNT(*) AS total_orders
FROM Orders
GROUP BY customer_name
HAVING COUNT(*) > 1;

-- Find top-performing employees (total order amount > 25000)
select e.employee_name,
e.employee_id,
sum(o.amount) as total_order_amount
from employees e
join orders o
on e.employee_id = o.employee_id
group by e.employee_name, e.employee_id
having total_order_amount > 25000
order by total_order_amount desc

-- Find departments where employee count is between 2 and 5
select count(*) as employee_count,
d.department_name,
d.department_id
from employees e
join departments d
on e.department_id = d.department_id
group by d.department_name, d.department_id
having employee_count between 2 and 5
