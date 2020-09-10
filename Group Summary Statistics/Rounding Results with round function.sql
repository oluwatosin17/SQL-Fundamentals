select Major_category,
round(Sharewomen,2) rounded_share_women
from jobs.new_grads;

select round(Sharewomen,4) Rounded_women, Major_category
from jobs.new_grads
limit 10;