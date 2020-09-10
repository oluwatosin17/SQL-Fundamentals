select Major_category, Sample_category, round(avg(Sharewomen),3) Mean_women,
sum(Total) Total_graduates
from jobs.new_grads
group by Major_category, Sample_category
having Mean_women > 0.8;


select Major_category, round(avg(College_jobs)/avg(Total),3) Share_degree_jobs
from jobs.new_grads
group by Major_category
having Share_degree_jobs < 0.3

