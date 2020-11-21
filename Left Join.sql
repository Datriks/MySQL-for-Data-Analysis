use mavenmovies;

select 
	A.first_name,
	A.last_name,
    count(B.film_id) as number_of_films
from actor as A
	left join film_actor as B
		on A.actor_id = B.actor_id
GROUP BY A.first_name,
		 A.last_name;
         
select DISTINCT
	A.inventory_id,
    B.inventory_id
from inventory as A
	left join rental as B
		on A.inventory_id = B.inventory_id
limit 5000;

select 
	film.title,
    count(film_actor.actor_id) as nr_of_actors
from film
	left join film_actor
		on film.film_id = film_actor.film_id
group by title;















