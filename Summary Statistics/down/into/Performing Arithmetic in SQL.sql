select P75th - P25th quartile_spread
from jobs.recent_grads;

select ShareWomen * 100 percentile_female
from jobs.recent_grads
limit 10;

select Major, Major_category, P75th - P25th quartile_spread
from jobs.recent_grads
order by quartile_spread desc
limit 20;