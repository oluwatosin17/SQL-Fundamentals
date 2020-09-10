select Major_category, Sample_category, avg(Sharewomen) Mean_women,
sum(Total) Total_graduates
from jobs.new_grads
group by Major_category, Sample_category
having Mean_women > 0.8;


select Major_category, avg(Low_wage_jobs)/avg(Total) Share_low_wage
from jobs.new_grads
group by Major_category
having Share_low_wage > 0.1