select Major, Sharewomen
from jobs.new_grads
where Sharewomen > (select avg(Sharewomen) from jobs.new_grads);

select Major , Unemployment_rate
from jobs.new_grads
where Unemployment_rate < (select avg(Unemployment_rate) from jobs.new_grads);