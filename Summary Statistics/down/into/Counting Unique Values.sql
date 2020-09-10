#Returning Unique values in a column
SELECT DISTINCT Major_category
FROM jobs.recent_grads;

SELECT DISTINCT Major, Major_category
FROM jobs.recent_grads
limit 5;

SELECT COUNT(DISTINCT Major_category) unique_major_category
FROM jobs.recent_grads;

SELECT COUNT(DISTINCT Major) unique_majors, COUNT(DISTINCT Major_category) unique_major_categories, COUNT(DISTINCT Major_code) unique_major_codes 
FROM jobs.recent_grads;
