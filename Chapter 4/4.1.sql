select p.payment_id
from payment p
	inner join customer c
    on c.customer_id = p.customer_id
where c.customer_id <> 5 AND (p.amount > 6 or date(p.payment_date) = '2005-08-23')
    