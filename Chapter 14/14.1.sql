create view film_ctgry_actor
(title, category_name, first_name, last_name)
as
select f.title, c.name, a.first_name, a.last_name
from film f
inner join film_actor fa
	on fa.film_id = f.film_id
inner join actor a
	on fa.actor_id = a.actor_id
inner join film_category fc
	on fc.film_id = f.film_id
inner join category c
	on c.category_id = fc.category_id
