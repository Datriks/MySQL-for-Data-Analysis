use mavenmovies;

select 
	actor.actor_id,
    actor.first_name as actor_first,
    actor.last_name as actor_last,
    actor_award.first_name as award_first,
    actor_award.last_name as award_last,
    actor_award.awards
from actor
	right join actor_award
		on actor.actor_id = actor_award.actor_id
order by actor_id