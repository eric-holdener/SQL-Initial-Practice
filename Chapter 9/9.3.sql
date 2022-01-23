select actr.first_name, actr.last_name, grps.level
from 
	(select count(*) films, a.first_name, a.last_name
    from film_actor fa
		inner join actor a
        on a.actor_id = fa.actor_id
    group by fa.actor_id) actr
    inner join
		(select 'Hollywood Star' level, 30 min_roles, 99999 max_roles
		union all
		select 'Prolific Actor' level, 20 min_roles, 29 max_roles
		union all
		select 'Newcomer' level, 1 min_roles, 19 max_roles) grps
    on actr.films
		between grps.min_roles and grps.max_roles;