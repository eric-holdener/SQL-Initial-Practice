select c.customer_id, c.first_name, c.last_name, sum(p.amount)
from customer c
	left outer join payment p
    on c.customer_id = p.customer_id
group by c.customer_id