select 'Actr' typ, a.first_name as fname, a.last_name as lname
from actor a
where a.last_name like 'L%'
union
select 'Cust' typ, c.first_name as fname, c.last_name as lname
from customer c
where c.last_name like 'L%'
order by lname