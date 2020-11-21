/* the company's insurance policy is up for renewal and the insurance company's underwriters need some
updated information from us before they will issue a new policy */
use mavenmovies;
select
	first_name,
    last_name,
    email,
    store_id
from staff;
/*
	We will need separate counts of inventory items held at each of your store
*/
select 
	store_id,
    count(inventory_id) as inventory_items
from inventory
group by store_id;

/*
	We will need a count of active customers for each of your stores, Separately, please.
*/
SELECT 
	store_id,
	count(customer_id) as active_customers
from customer
where active = 1
group by store_id;

select 
	store_id,
    count(case when active = 1 then customer_id else null end) as active
from customer
group by store_id;
/*
	We will need to provide a count of all customer email addresses stored in the database
*/
select 
	count(email) as nr_emails
from customer;
/*
	Please provde a count of unique film titles you have in inventory at each store and then provide a 
    count of the unique categories of films you provide
*/

select 
	store_id,
    count(distinct film_id) as unique_films
from inventory
group by store_id;

select * from category;

select
	count(distinct name) as unique_categories
from category;

/*
	We would like to understand the replacement cost of your films
*/
select
	max(replacement_cost) as max_replacement,
	min(replacement_cost) as min_replacement,
    avg(replacement_cost) as average_replacement
from film;
/*
	Please provide the average payment you process, as well as the maximum payment you have processed
*/
select * from payment;
select 
	avg(amount) as average_payment,
    max(amount)as maximum_amount
from payment;

/*
	Please provide a list of all customer identification values, with a count of rentals they have made all-time, 
    with your highest volume customers at the top of the list
*/
select 
	customer_id,
    count(rental_id) as nr_rentals
from rental
group by customer_id
order by nr_rentals desc;

/*
	
*/
select * from rental;
