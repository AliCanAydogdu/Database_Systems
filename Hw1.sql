#Based on Sakila Database

--Write a Sql query that brings all information from CITY table about Cities which Country ID is 15.

select *
from
CITY
where
country_id = 15;

--How many City are there in the CITY table? (Only SQL query)


select count(*) AS NUMBEROFCITIES
from
CITY;

--Write a Sql query that brings all information from CITY table which City Name starts with ‘A’ or ‘B’


select*
from
CITY
where
city like “A%” OR city like “B%”;

--Write a Sql query that brings City and CityId info from CITY table.


select city, city_id
from
CITY;

--Write a Sql query that brings FirstName, LastName, CustomerID  info from CUSTOMER table


select first_name, last_name, customer_id
from
CUSTOMER;

--Write a Sql query that brings all  info from CUSTOMER table whose name is not ‘Jennifer’


select *
from
CUSTOMER
where
first_name NOT IN(“Jennifer”);

--Write a Sql query that brings all information from PAYMENT table which amount is between 100 and 150.


select*
from
Payment
where
amount between 1.00 and 1.50;

--Write a Sql query that brings all information from PAYMENT table which amount is bigger than 150


select *
from
PAYMENT
where
amount >1.50;

--Write a Sql query that brings First_name from ACTOR table. Eliminate same names.


select distinct first_name
from
ACTOR;

--Write a Sql query that brings all information from PAYMENT table which belongs to “CINDY FISHER” * you can find info about “CINDY FISHER” in CUSTOMER table.


select *
from
PAYMENT
where
customer_id =113;
