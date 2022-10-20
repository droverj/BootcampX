-- SELECT assignments.day AS day, count(assignments.id) as total_assignments
-- FROM assignments
-- GROUP BY assignments.day

SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;