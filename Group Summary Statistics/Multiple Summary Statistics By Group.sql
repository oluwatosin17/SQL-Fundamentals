select Major_category,
	   sum(Employed), avg(Employed), max(Employed),min(Employed)
from jobs.recent_grads
group by Major_category;

select Major_category, sum(Women) Total_women, avg(ShareWomen) Mean_women,
(sum(Total)*avg(ShareWomen)) Estimate_women
from jobs.recent_grads
group by Major_category;