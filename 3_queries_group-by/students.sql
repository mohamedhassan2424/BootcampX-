SELECT students.name as student_name, cohorts.name as cohort_name, cohorts.start_date as chort_start_date, students.start_date student_start_date
FROM students 
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY chort_start_date;

SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;

SELECT SUM(assignment_submissions.duration) as total_duration 
FROM assignments 
JOIN students ON student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';

SELECT SUM(assignment_submissions.duration) as total_duration 
FROM assignment_submission
JOIN students ON student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';

SELECT *
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name;

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >=10 
ORDER BY day;

SELECT cohorts.name as cohort_name, count(*) as student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(*)>=18
ORDER BY cohorts.name;



SELECT cohorts.name as cohort,count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON student_id= students.id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;

SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;


SELECT 

