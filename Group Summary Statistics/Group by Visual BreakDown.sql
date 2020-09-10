select Employed, Major_category, SUM(Employed)
from jobs.recent_grads
group by Major_category;

select Major_category, AVG(ShareWomen)
from jobs.recent_grads
group by Major_category;