-- Joins

-- NO Joins------------------------------------------
 /* Retrieve all data from customers and orders 
 in two different results */
 
 select *
 from customers;
 select *
 from orders;
 
 
 -- Inner join ---------------------------------------------
 /* Get all customers along with their orders,
 but only from customers who have placed an order*/
 
 select 
 c.id,
 c.first_name,
 o.order_id,
 o.sales
 from customers as c
 inner join orders as o 
 on c.id = o.customer_id
 
 -- Left Join ----------------------------------------------
 
 /* Get all customers along with their orders,
 including those without orders. */
 
 
 
select 
 c.id,
 c.first_name,
 o.order_id,
 o.sales
 from customers as c
 left join orders as o 
 on c.id = o.customer_id
 
 -- Right Join --------------------------------------------
 
 /* Get all customers along with their orders,
 including oders without matching customers. */
 select 
 c.id,
 c.first_name,
 o.order_id,
 o.sales
 from customers as c
 right join orders as o 
 on c.id = o.customer_id
 
 -- Full Join ------------------------------
  /* Get all customers and all orders ,
  even if there's no match .*/
  
 select 
 c.id,
 c.first_name,
 o.order_id,
 o.sales
 from customers as c
 FULL join orders as o 
 on c.id = o.customer_id
 
 
 
 
 
 
