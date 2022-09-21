-- first three cohorts
SELECT COUNT(*)
FROM students
WHERE cohort_id IN  (1,2,3);
-- cohort_id = 1 AND cohort_id = 2 AND cohort_id = 3;