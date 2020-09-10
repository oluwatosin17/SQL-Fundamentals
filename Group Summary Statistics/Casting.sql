select cast(Women as float) / cast(Total as float) women_ratio
from jobs.new_grads
limit 5;

select Major_category, cast(sum(Women) as float) / cast(sum(Total) as float) SW
from jobs.new_grads
group by Major_category
order by SW;