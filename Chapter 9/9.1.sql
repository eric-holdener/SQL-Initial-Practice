select title
from film
where film_id in 
	(select f.film_id
    from film_category f
    inner join category c
    on c.category_id = f.category_id
    where c.name = 'Action')