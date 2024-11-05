with employee as (
select   emp.employee_id
,COALESCE(COUNT(DISTINCT  qu.query_id),0) AS unique_queries	
FROM employees as emp
left join queries as qu
on emp.employee_id=qu.employee_id
and qu.query_starttime >='2023-07-01T00:00:00Z' AND qu.query_starttime <'2023-10-01T00:00:00Z' 
group by emp.employee_id
)

select unique_queries,COUNT(employee_id) as employee_count
from employee
GROUP BY unique_queries
ORDER BY unique_queries
