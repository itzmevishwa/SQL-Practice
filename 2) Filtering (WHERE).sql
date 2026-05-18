/*  2) WHERE (Filtering) */
-- -----------------------
-- Show employees with salary greater than 60000
select employee_name,
salary
from employees
where salary > 60000

/*Show employees with salary less than or equal 
to 50000*/
select employee_name,
salary
from employees
where salary >= 50000

-- Show employees from department_id = 2
select employee_name,
department_id
from employees
where department_id = 2

-- Show employees from city = 'Chennai'
select employee_name,
city
from employees
where city = "Chennai"

-- Show employees hired after '2023-01-01'
select employee_name,
hire_date
from employees
where hire_date > "2023-01-01";

/* Show employees with salary > 60000 
AND city = 'Chennai'*/
select employee_name,
salary,
city
from employees
where salary > 60000 and city = "Chennai"

-- Show employees from department 2 OR 3
select employee_name,
department_id
from employees
where department_id = 2 or department_id= 3

/* Show employees with salary between 50000 
and 80000*/
select employee_name,
salary
from employees
where salary between 50000 and 80000

/*Show employees NOT from Bangalore*/
select employee_name,
city
from employees
where city != "Bangalore"

-- . Show employees where department_id is NULL
select employee_name,
department_id
from employees
where department_id is null

-- Show employees where bonus is NOT NULL
select employee_name,
bonus
from employees
where bonus is not null

-- Show employees whose name starts with 'A'
select employee_name
from employees
where employee_name like "A%";

-- Show employees whose name ends with 'a'
select employee_name
from employees
where employee_name like "%a"

-- how employees whose email contains 'gmail'
select employee_name,
email
from employees
where email like "%gmail%"

-- Show employees from department 1, 2, or 3
select employee_name,
department_id
from employees
where department_id in (1,2,3)

-- Show employees from cities Chennai, Delhi, Mumbai
select employee_name,
city
from employees
where city in ("Chennai","Delhi","Mumbai")

/*Show employees from IT department 
with salary > 70000*/
select e.employee_name,
e.salary,
d.department_name
from employees e
join departments d 
on e.department_id = d.department_id
where d.department_name = "IT" and e.salary > 70000;

/*Show employees NOT in HR department 
AND salary > 50000*/
select e.employee_name,
e.salary,
d.department_name
from employees e
join departments d
on e.department_id = d.department_id
where d.department_name != "HR" and e.salary > 50000



