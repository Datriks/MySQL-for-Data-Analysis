use mavenmovies;

select title, description
from film 
where description LIKE '%Dentist%';

select title, description
from film 
where description LIKE '%Epic%';

select title, description
from film 
where description LIKE '%China';

select title, description
from film 
where title like '_laddin Calendar';

select title, description
from film 
where title not like '_laddin Calenda_';

select title,special_features
from film
where special_features like '%Behind the Scenes%';