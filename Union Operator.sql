use mavenmovies;
-- returns all data from the first table with all data from second table appended to the end
-- union will keep distinct values of the appended data
-- union all will keep all the duplicated in the new appended data 
select 
	'advisor' as type,
    first_name,
    last_name
from advisor
union
select
	'investor' as type,
    first_name,
    last_name
from investor;

select 
	'advisor' as type,
    first_name,
    last_name
from advisor
union
select
	'staff' as type,
    first_name,
    last_name
from staff;
