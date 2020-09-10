select avg(Sharewomen)
from jobs.new_grads;

select Major , Sharewomen
from jobs.new_grads
where Sharewomen > 0.5225502029538;
