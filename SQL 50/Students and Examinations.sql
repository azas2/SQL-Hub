SELECT 
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(Ex.subject_name) AS attended_exams
FROM students AS s
cross join 
    subjects AS sub
left JOIN Examinations AS Ex
    ON s.student_id=Ex.student_id
    AND
    sub.subject_name=ex.subject_name
GROUP BY s.student_id,s.student_name,sub.subject_name
ORDER By s.student_id,sub.subject_name    
