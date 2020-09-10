#LENGTH Given a text column the LENGTH function returns the number of characters in the input strings
select Major,
Total,Men,Women,Unemployment_rate,length(Major) Length_of_name
from jobs.recent_grads
order by Unemployment_rate desc
limit 3;

select concat('Cat: ', Major_category)
from jobs.recent_grads
limit 2;

select concat("Major: ", lower(Major)) Major,
Total,Men,Women,Unemployment_rate,length(Major) Length_of_name
from jobs.recent_grads
order by Unemployment_rate desc;

