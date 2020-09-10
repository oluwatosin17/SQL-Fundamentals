select Major_category, sum(Total)
from jobs.new_grads
group by Major_category
order by sum(Total) desc;

select Major_category, Major 
from jobs.new_grads
where Major_category in (select Major_category 
 from jobs.new_grads
 group by Major_category
 order by sum(Total) desc
 )
 limit 3;

