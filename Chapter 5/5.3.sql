select a1.address, a2.address, a1.city_id
from address a1
	inner join address a2
    on a1.city_id = a2.city_id
	and a1.address < a2.address
