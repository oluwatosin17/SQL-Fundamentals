# using the count function we can return the number of rows the result set contain 
select count(*)
from jobs.new_grads
where Sharewomen > (select	avg(Sharewomen) from jobs.new_grads);

select count(*),
(select count(*) from jobs.new_grads)
from jobs.new_grads
where Sharewomen > (select avg(Sharewomen) from jobs.new_grads);

select cast(count(*) as float) / cast((select count(*) from jobs.new_grads ) as float) proportion_abv_avg
from jobs.new_grads
where Sharewomen > (select avg(Sharewomen) from jobs.new_grads)
