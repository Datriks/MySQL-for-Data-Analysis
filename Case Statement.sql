-- CASE allows you to process a series of ih/then logical operators in a specific oreder
-- CASE when logic1 then value1 when logic2 then value2 END
-- use this when creating buckets of data

SELECT DISTINCT length,
	CASE 
		when length < 60 then 'under 1 hour'
		when length between 60 and 90 then '1 -1.5 hrs'
		when length > 90 then 'over 1.5 hrs'
		else 'uh oh ,, check logic!'
	end as length_bucket
    from film;
    
select DISTINCT 
	title,
    case
		when rental_duration <= 4 then 'rental too short'
        when rental_rate >= 3.99 then 'too expensive'
        when rating in ('NC-17', 'R') then 'too adult'
        when length  not between 60 and 90 then 'too short or too long'
        when description like '%Shark%' then 'too scary'
        else 'great  reco for my nice'
	end as fit_for_recomandation
    from film;
    
select 
	first_name, 
    last_name,
    concat(first_name,' ', last_name) as full_name,
case
	when store_id =1 and active = 1 then 'store 1 active'
	when store_id =1 and active = 0 then 'store 1 innactive'
    when store_id =2 and active = 1 then 'store 2 active'
    when store_id =2 and active = 0 then 'store 2 innactive'
    else 'check....logic!'
end as store_activity
from customer;
    

    
    
    
    
    
    
    
    
    
    