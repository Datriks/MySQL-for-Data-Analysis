use mavenmovies;

-- having is used only in conjuction with group by
-- if you want to filter and group by is not present then use WHERE 
select 
	customer_id, 
    count(rental_id) as total_rentals
from rental
GROUP BY customer_id
HAVING total_rentals >= 30;

select 
	customer_id,
    count(rental_id) as total_rentals
from rental
GROUP BY customer_id
HAVING total_rentals <= 15
ORDER BY total_rentals desc;

select * from rental







