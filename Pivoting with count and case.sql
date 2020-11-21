use mavenmovies;
select * from inventory;

select 
	film_id,
	count(case when store_id = 1 then inventory_id else null end) as store_1_copies,
    count(case when store_id = 2 then inventory_id else null end) as store_2_copies,
    count(inventory_id) as total_copies
from inventory
group by film_id
order by film_id;

select 
	inventory_id,
	film_id,
	count(case when store_id = 1 then inventory_id else null end) as store_1_inventory,
    count(case when store_id = 2 then inventory_id else null end) as store_2_inventory
from inventory
GROUP BY inventory_id, film_id
order by inventory_id;

select 
	film_id,
	count(case when store_id = 1 then inventory_id else null end) as store_1_inventory,
    count(case when store_id = 2 then inventory_id else null end) as store_2_inventory
from inventory
GROUP BY  film_id;

select * from customer;

select 
	store_id,
    count(case when active = 1 then customer_id else null end) as active,
    count(case when active = 0 then customer_id else null end) as innactive
from customer
group by store_id
order by store_id;
