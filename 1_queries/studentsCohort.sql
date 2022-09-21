
-- ordering by name
SELECT id, name 
FROM students 
WHERE cohort_id = 1
ORDER BY name;

-- first three cohorts
SELECT COUNT(*)
FROM students
WHERE cohort_id IN  (1,2,3);
-- cohort_id = 1 AND cohort_id = 2 AND cohort_id = 3;

-- students who dont have email or phone 
SELECT name,cohort_id
FROM students
WHERE email IS NULL OR phone IS NULL;
--students without a gmail.com account and a phone numbeR
SELECT name,id, email, cohort_id
FROM students
WHERE phone IS NULL AND email NOT LIKE '%gmail.com';
-- ALL the students currently enrolled
SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

-- without linked gihub 
SELECT name, email, phone 
FROM students
WHERE github IS NULL AND end_date IS NOT NULL;