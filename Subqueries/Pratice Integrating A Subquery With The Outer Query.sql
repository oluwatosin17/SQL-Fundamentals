#Write a query that returns the average ratio between sample_size and Total for all the majors 

select avg(cast(Sample_size as float)/ cast(Total as float)) avg_ratio
from jobs.new_grads;

select Major , Major_category , (cast(Sample_size as float) / cast(Total as float)) ratio
from jobs.new_grads
where (cast(Sample_size as float) / cast(Total as float)) > 0.009085896594349793;
