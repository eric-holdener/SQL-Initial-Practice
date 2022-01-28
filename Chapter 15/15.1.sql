select distinct table_name, index_name
from information_schema.tables
where table_schema = 'sakila'