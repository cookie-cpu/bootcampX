SELECT teachers.name AS teacher, students.name AS student, 
assignments.name AS assignment,  
SUM(completed_at - started_at) as duration
FROM assistance_requests
JOIN teachers
ON teacher_id = teachers.id
JOIN students
ON student_id = students.id
JOIN assignments
ON assignment_id = assignments.id
GROUP BY teacher, student, assignment, duration
ORDER BY duration;