select 'Actr' typ, a.first_name, a.last_name
from actor a
where a.last_name like 'L%'
union
select 'Cust' typ, c.first_name, c.last_name
from customer c
where c.last_name like 'L%'