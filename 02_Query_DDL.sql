/* DDL- DATA DEFINITION LANGUAGE COMMANDS	*/
-- ---------------------------------------------- --
-- CREATE
-- ALTER
-- DROP
-- TRUNCATE
-- RENAME


/* Create a new table called persons
with columns: id, person_name, birth_date, and phone */

create table persons(
	id int primary key not null,
    person_name varchar(100),
    birth_date date,
    phone varchar(20) not null
    )
    
-- Add a new column called email to the persons table
alter table persons
add email varchar(100)

-- Remove the column phone from the persons table

alter table persons
drop column phone

-- Delete the table persons from the database

drop table persons

-- Remove all values in the table peoples

truncate table persons

-- Rename the table name

rename table persons to people






    
    
