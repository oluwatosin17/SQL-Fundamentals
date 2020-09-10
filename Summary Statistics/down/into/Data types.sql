select Major, Total, Men, Women, Unemployment_rate
from jobs.recent_grads
order by Unemployment_rate desc
limit 3;
