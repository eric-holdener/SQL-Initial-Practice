select f.title
from film f
where exists
	(select fc.film_id
    from film_category fc
    inner join category c
    on c.category_id = fc.category_id
    where c.name = 'Action' and f.film_id = fc.film_id)