use mavenmovies;

select rating, count(film_id) as count
from film
GROUP BY rating;

-- group by clause--
/* multi line comment */
/*
select rating, 
count(film_id),
count(film_id) as films_with_this_rating -- this is using aliases
from film
group by rating;
*/

SELECT 
	rental_duration,
	count(title) as Number_TITLE
from film
GROUP BY rental_duration;

select rating, rental_duration,
	count(film_id) as number_of_films
from film
group by rating, rental_duration;

select rating, rental_duration, replacement_cost,
	count(film_id) as number_of_films
from film
group by rating, rental_duration, replacement_cost;


