-- students who dont have email or phone 
SELECT name,cohort_id
FROM students
WHERE email IS NULL OR phone IS NULL;