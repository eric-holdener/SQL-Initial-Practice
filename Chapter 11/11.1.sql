select name,
case
	when name in ('English', 'Italian', 'French', 'German') then 'latin1'
    when name in ('Japanese', 'Mandarin') then 'utf8'
    else 'Unknown'
end character_set
from language