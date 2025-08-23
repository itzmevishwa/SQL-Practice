/* DDL- DATA DEFINITION LANGUAGE COMMANDS	*/
-- ---------------------------------------------- --
-- INSERT
-- UPDATE
-- DELETE

/* Insert extra values in the table customers*/

insert into customers (id, first_name, country, score)
values
	(6, "Anna", "USA", NULL),
    (7, "Sam", NULL, 100),
    (8, "USA", "Max", NULL),-- Wrong values
    (9, "Andreas", "Germany", NULL),
    (10, "Sahra", NULL, NULL)
    
/*Insert using SELECT*/
-- Insert data from "customers"  into persons

insert into persons(id, person_name, birth_date, phone)
select
	id,
    first_name,
	null,
    "unknown"
from customers
-- -------------------------------------------------------------- --
/* Change the score of customer with id 6 to 0*/

update customers
set 
score=0
where id=6

/* Change the score of customer 10 to 0
and update the country to UK */

update customers
set score=0,
	country="UK"
where id=10

/*Update all customers with a NULL score
by settings their score to 0*/

update customers
set score=0
where score is null
-- -------------------------------------------------------------- --

/* Delete all customers with an ID Greater than 5*/

delete from customers
where id>5



/* Delete all data inside the table*/

delete from customers -- or better use "truncate table cusomers"


