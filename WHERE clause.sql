select customer_id,rental_id,amount,payment_date
from payment;

select customer_id,rental_id,amount,payment_date
from payment
where amount = 0.99;

select 
	customer_id, rental_id,amount, payment_date
from payment
where rental_id = '573';

select 
	customer_id, rental_id,amount, payment_date
from payment
where payment_date > '2006-01-01';

select * from payment;

select *
from payment
where customer_id between 1 and 100;

select 
	customer_id, rental_id,amount, payment_date
from payment
where amount = 0.99
	and payment_date >'2006-01-01';

select customer_id,rental_id,amount,payment_date
from payment
where customer_id between 1 and 100
and amount > 5 and payment_date > '2006-01-01';

select 
	customer_id,rental_id,amount,payment_date
from payment
where customer_id = 5
or customer_id = 11
or customer_id = 29;

select 
	customer_id,rental_id,amount,payment_date
    from payment
    where amount >5 
    or customer_id = 42
    or customer_id = 53
    or customer_id = 60
    or customer_id = 73;
    
select 
	customer_id,rental_id,amount,payment_date
from payment
where amount > 5
or customer_id in (42,53,60,73);






