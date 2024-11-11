with rank_table as (
SELECT 
  department_id,
name ,
salary
, DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS RANK_SALARY
from employee 
)
select dep.department_name,m.name ,m.salary 
from rank_table as m
inner join department as dep 
ON m.department_id=dep.department_id
WHERE m.RANK_SALARY <=3
order by department_name  asc , salary desc, name asc
