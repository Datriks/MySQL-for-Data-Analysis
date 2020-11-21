select 
	customer_id,
    rental_id,
    amount,
    payment_date
from payment
ORDER BY amount desc, customer_id desc;

select 
	customer_id,
    SUM(amount) as total_payment_amount
from payment
GROUP BY customer_id
ORDER BY total_payment_amount desc;

select
	title,
    length,
    rental_rate
from film
order by length desc;









