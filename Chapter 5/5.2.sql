select f.title
from film f
	inner join film_actor fa
    on f.film_id = fa.film_id
    inner join actor a
    on fa.actor_id = a.actor_id
where a.first_name = 'John'