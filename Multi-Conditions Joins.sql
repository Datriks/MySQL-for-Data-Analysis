use mavenmovies;

select 
	film.film_id,
	film.title,
    film.rating,
    category.name
from film
	inner join film_category
		on film.film_id = film_category.film_id
	inner join category
		on film_category.category_id = category.category_id
where category.name = 'horror'
order by film_id;

select 
	film.film_id,
	film.title,
    film.rating,
    category.name
from film
	inner join film_category
		on film.film_id = film_category.film_id
	inner join category
		on film_category.category_id = category.category_id
		and category.name = 'horror'
ORDER BY film_id;

select DISTINCT
	inventory.store_id,
	film.title,
    film.description
from film
	inner JOIN inventory
		on film.film_id = inventory.inventory_id
		and inventory.store_id = 2
order by title;

	










