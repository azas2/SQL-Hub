SELECT FORMAT(trans_date, 'yyyy-MM') as month ,
country ,
 COUNT(state) as trans_count
 ,SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) as approved_count
,sum(amount)as  trans_total_amount , 
SUM((CASE WHEN state='approved' then amount else 0 end)) as approved_total_amount
from  Transactions
GROUP BY  FORMAT(trans_date,'yyyy-MM'),country
order by FORMAT(trans_date,'yyyy-MM') asc
