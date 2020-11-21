use mavenmovies;

select 
	film.film_id,
    film.title,
    category.name as category_name
from film
	inner join film_category
		on film.film_id = film_category.film_id
	inner join category
		on film_category.category_id = category.category_id;
        
SELECT
	film_actor.actor_id as ID,
	concat(actor.first_name, " " ,actor.last_name) as "Full Name",
    film.title as Title
from actor
	inner join film_actor
		on actor.actor_id = film_actor.actor_id
	inner join film
		on film_actor.film_id = film.film_id;
        











