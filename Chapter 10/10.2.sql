select c.customer_id, c.first_name, c.last_name, sum(p.amount)
from payment p
	right outer join customer c
    on c.customer_id = p.customer_id
group by c.customer_id