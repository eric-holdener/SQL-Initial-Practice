select distinct c.customer_id
from customer c
inner join rental r
	on r.customer_id = c.customer_id
where date(r.rental_date) = "2005-07-05"
group by c.customer_id