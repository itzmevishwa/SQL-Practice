					/*-----------------*/
					-- FILTERING DATA
					/*-----------------*/
-- use mydatabase
				/* COMPARISON OPERATORS */ 
                -- =
                -- <> !=
                -- >
                -- >=
                -- <
                -- <=

-- Retrieve all customers from germany
select*
from customers
where country="Germany"

-- Retrieve all customers who are not from germany
select*
from customers
where country!= "Germany"

-- Retrieve all customers with a score greater than 500
select*
from customers
where score > 500

-- Retrieve all customers with a score of 500 or more
select*
from customers
where score >= 500

-- Retrieve all customers with a  score less than 500
select*
from customers
where score < 500

-- Retrieve all customers with a score of 500 or less
select*
from customers
where score <= 500


				/* LOGICAL OPERATORS */ 
                -- AND
                -- OR
                -- NOT
                
/* Retrieve all customers who are from the USA 
AND have a score greater than 500 */ 
select*
from customers
where country = "USA" and score > 500

/* Retrieve all customers who are either from the
USA OR have a score greater than 500 */
select*
from customers
where country = "USA" or score > 500

-- Retrieve all customers with a score NOT less than 500
select*
from customers
where not score < 500


				/* RANGE OPERATOR */
                -- BETWEEN {Range}
	
 /* Retrieve all customers whose score falls
 in the range between 100 and 500*/
 select*								
 from customers													
 where score between 100 and 500 
 
 
 				/* RANGE OPERATOR */
                -- IN
                -- NOT IN
 
 -- Retrieve all customers from either Germany or USA
 select*
 from customers
where country in ("Germany", "USA")  /* Same as for NOT IN*/


				/* SEARCH OPERATOR */
                -- LIKE
                
-- Find all customers whose first name starts with "M"*/
select*
from customers
where first_name like "M%"

-- Find all customers whose first name contains "R"*/
select*
from customers
where first_name like "%R%"

/*Find all customers whose first name
has "r" in the third position*/
select*
from customers
where first_name like "__r%"
                



 

 


		
        







-- 

