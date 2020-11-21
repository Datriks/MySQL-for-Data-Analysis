use mavenmovies;
-- count(), count distinct(),min(),max(),avg(),sum()

SELECT rating,
	count(film_id) as count_of_films,
    min(length) as shortest_film,
    max(length) as longest_film,
    avg(length) as average_length_film,
    avg(rental_duration) as average_rental_duration
from film
GROUP BY rating;

SELECT replacement_cost,
	count(film_id) as Number_of_films,
    avg(rental_rate) as average_rental_rate,
    min(rental_rate) as cheapest_rental_rate,
    max(rental_rate) as expensive_rental_rate
from film
GROUP BY replacement_cost
ORDER BY replacement_cost DESC;
