select count(policy_holder_count)
from (
select count(policy_holder_id)as policy_holder_count 
from callers
GROUP BY policy_holder_id 
having count(policy_holder_id)>=3 
) as totel_count 
