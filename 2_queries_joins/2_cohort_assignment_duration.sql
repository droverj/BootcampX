-- SELECT SUM(assignment_submissions.duration) as total_duration
-- FROM students JOIN cohorts ON cohort_id = cohorts.id
-- JOIN assignment_submissions ON student_id = students.id
-- WHERE cohorts.name = 'FEB12'

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';