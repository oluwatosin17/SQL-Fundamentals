select Sample_size,
CASE
when Sample_size < 200 then 'Small'
when Sample_size >= 200 and Sample_size < 1000 then 'Medium'
when Sample_size > 1000 then 'Large'
else NULL
end Sample_category
from jobs.recent_grads;