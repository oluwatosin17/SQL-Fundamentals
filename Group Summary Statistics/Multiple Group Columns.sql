select Major_category,Sample_category, 
avg(Sharewomen) Mean_women,sum(Total) Total_graduates
from jobs.new_grads
group by Major_category,Sample_category;