select sum(Employed)
from jobs.recent_grads
group by Major_category;

select Major_category, sum(Employed)
from jobs.recent_grads
group by Major_category;

select Major_category,  SUM(Total) Total_graduates
from jobs.recent_grads
group by Major_category;