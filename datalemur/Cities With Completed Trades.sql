select us.city ,COUNT(t.quantity) as total_orders
from trades as t
inner join users  as us
ON t.user_id=us.user_id
where status ='Completed'
GROUP BY us.city
ORDER BY COUNT(t.quantity) DESC
LIMIT 3
