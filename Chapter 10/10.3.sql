select (ones.num + tens.num) number
from
(select 0 num union all
select 1 num union all
select 2 num union all
select 3 num union all
select 4 num union all
select 5 num union all
select 6 num union all
select 7 num union all
select 8 num union all
select 9 num) ones
cross join
(select 0 num union all
select 10 num union all
select 20 num union all
select 30 num union all
select 40 num union all
select 50 num union all
select 60 num union all
select 70 num union all
select 80 num union all
select 90 num) tens
order by number