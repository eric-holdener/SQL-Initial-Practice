select customer_id, sum(amount), count(*)
from payment
group by customer_id