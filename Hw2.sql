#Ali Can Aydogdu

--Show all data in each of the tables.

      select *
      from actor, address, category, city, country, customer, film, film_actor, film_category,
               film_text, inventory, language, payment, rental, staff, store.

--List the Address, City, Staff Name of all Stores.

      select address.address,
	    concat(staff.first_name , “ ”, staff.last_name) as FullName, City.city
     from address, staff, city
     where city.city_id = address.city_id and address.address_id = staff.address_id

--List the Number of Stores.

	select
		count (*) as StoreCount
	from store

--List all Ratings and how many films do we have totally according to their Ratings.

	select	distinct film.rating,
		count (*) as counter

	from film
	where film.rating
		group by film.rating

--List all Films and their Category Name whose Title includes 'Africa'.

	select film.title,
		category.name
	from
		film,
		film_category,
		category
	where
		film.title like “%AFRICA%”
		and film.film_id = film_category.film_id and category.category_id =
		film_category.category_id.

--List all Actors and their film numbers per actor.

	select
		distinct concat (actor,first_name, “ ” , actor.last_name) as fullname
		count (*) as counter
	from	actor, film_actor, film
	where  film_actor.actor_id = actor.actor_id and film_actor.film_id = film.film_id
		group by actor.actor_id

--List all Actors and how much money did company earn with their movies.

	select concat(actor.first_name, “ ” , actor.last_name) as name,
		sum (payment.amount) as income,
		avg (payment.amount) as avg
	from  actor, film_actor, inventory, rental, payment
	where	actor.actor_id = film_actor.actor_id
		and film_actor.film_id = inventory.film_id
		and inventory.inventory_id = rental.inventory_id
		and rental.rental_id = payment.rental_id
		group by actor.actor_id
    
--List all Tables in Sakila DataBase* Research

 show tables
