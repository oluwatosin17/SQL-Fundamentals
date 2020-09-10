# in = either or
select Major, Major_category
from jobs.new_grads
where Major_category in ("Business" , "Engineering")
limit 7;

select Major_category, Major
from jobs.new_grads
 where Major_category in ("Business","Humanities & Liberal Arts" , "Education");
