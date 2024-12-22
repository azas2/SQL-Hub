with code as(
    select count(id) as total_count from Seat
) 

select 
CASE  
    WHEN id %2 !=0  and id!=total_count then id+1
    WHEN id %2!=0 and id=total_count then id
    ELSE id-1
    END as id,
    student 
from Seat 
cross join code
order by id asc
