#Returning Majors that contain majority of female students
SELECT Major
FROM jobs.recent_grads
WHERE ShareWomen > 0.5;

#How many Majors had mostly female students 
SELECT COUNT(Major)
FROM jobs.recent_grads
WHERE ShareWomen > 0.5;

# A Query that returns a number of majors with mostly male students
SELECT COUNT(ShareWomen)
FROM jobs.recent_grads
WHERE ShareWomen < 0.5;
