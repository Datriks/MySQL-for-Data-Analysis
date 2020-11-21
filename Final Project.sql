use  mavenmovies;
/*
	Please send over the managers' names, at each store with the full address of each property( street address, district,city,country).
*/
select
	staff.first_name as manager_first_name,
    staff.last_name as manager_last_name,
    address.address,
    address.district,
    city.city,
    country.country
from store
	inner join staff on store.store_id = staff.store_id
    inner join address on store.address_id = address.address_id
    inner join city on address.city_id = city.city_id
    inner join country on city.country_id = country.country_id;
    
/*
	Pull a list of each inventory item you have stocked including the store id number, the inventory id,
    the name of the film the film's rating its rental rate and replacement costs
*/
select
	inventory.store_id,
    inventory.inventory_id,
    film.title,
    film.rating,
    film.rental_rate,
    film.replacement_cost
from inventory
	left join film
		on inventory.film_id = film.film_id;
        
/*
	Provide a summary level overview of the inventory. We would like to know how many inventory items you have with each rating at each store
*/    
select
	inventory.store_id,
    film.rating,
    count(inventory_id) as inventory_items
from inventory
	left join film
		on inventory.film_id = film.film_id
group by inventory.store_id, film.rating;

/*
	We need to know how diversified the inventory is in terms of replacement costs. We would like to see the number of films, as well as the 
    average replacement cost, and total replacement cost, sliced by store and film category
*/  

select
	inventory.store_id,
	category.name as main_category,
    count(inventory.inventory_id) as films,
    avg(film.replacement_cost) as average_replacement_cost,
    sum(film.replacement_cost) as total_replacement_cost
from inventory
	left join film 
		on inventory.film_id = film.film_id
	left join film_category
		on film.film_id = film_category.film_id
	left join category
		on film_category.category_id = category.category_id
group by store_id, main_category
order by total_replacement_cost desc;

 /*
	Provide a list of all customers names which store they go to whether or not they are currently active and their full address, 
    street address, city and country
*/     
select
	customer.first_name,
    customer.last_name,
    customer.store_id,
    customer.active,
    address.address,
    city.city,
    country.country
from customer
	left join address on customer.address_id = address.address_id
    left join city on address.city_id = city.city_id
    left join country on city.country_id = country.country_id;
 /*
	Pull together a list of customer names , their total lifetime rentals, and the sum of all payments you have collected from them, 
    ordered on total lifetime value with the most valuable customers at the top of the list
*/     
select
	customer.first_name,
    customer.last_name,
    count(rental.rental_id) as total_rentals,
    sum(payment.amount) as total_payment_amount
from customer
	left join rental on customer.customer_id = rental.customer_id
    left join payment on rental.rental_id = payment.rental_id
GROUP BY customer.first_name, customer.last_name
ORDER BY total_payment_amount desc;
    
    
    
    
    
    
	