-- SELECT students.name, email, cohorts.name
-- FROM students JOIN cohorts;

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students INNER JOIN cohorts ON cohorts.id = cohort_id;

-- Every JOIN must have an ON
-- INNER does not have to be included. JOIN will result in the same output.
-- INNER JOIN is used most often.
-- INNER JOIN will not include a row in its result if the foreign key is NULL
-- In the example above, students without a cohort_id did not appear.

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- Will result in an error ^
-- 3 types of OUTER JOIN: LEFT, RIGHT, FULL.

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;

SELECT students.name as student_name, cohorts.name as cohort_name, 
cohorts.start_date as cohorts_start_date, students.start_date as students_start_date
FROM students INNER JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohorts.start_date