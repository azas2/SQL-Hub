SELECT pro.project_id as project_id,
ROUND(AVG(Emp.experience_years *1.0),2) as average_years
FROM Employee  AS Emp
INNER JOIN Project AS pro
ON Emp.employee_id=pro.employee_id
GROUP BY pro.project_id
