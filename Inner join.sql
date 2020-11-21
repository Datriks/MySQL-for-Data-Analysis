use mavenmovies;

select DISTINCT
	B.rental_id
from inventory as A
	inner join rental as B
		on A.inventory_id = B.inventory_id
limit 5000;

select 
    B.inventory_id,
    B.store_id,
    A.title,
	A.description
from film as A
	inner join inventory as B
		on A.film_id=B.film_id
limit 1000;
    
    
    
    
    