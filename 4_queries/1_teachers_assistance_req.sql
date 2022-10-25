-- SELECT count(assistance_request.*) as total_assistances, teachers.name as name
-- FROM assistance_request
-- JOIN teachers ON assistance_request.teacher_id = teachers.id
-- WHERE teachers.name = 'Waylon Boehm'
-- GROUP BY teachers.name;

SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;