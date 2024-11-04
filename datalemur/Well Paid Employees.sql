SELECT child.employee_id ,child.name
from employee as child
inner join employee as parent
on parent.employee_id=child.manager_id
AND parent.salary<child.salary
