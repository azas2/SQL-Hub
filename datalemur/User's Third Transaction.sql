
WITH rank_f AS(
SELECT user_id,spend,transaction_date
,ROW_NUMBER () OVER(PARTITION BY user_id ORDER BY transaction_date) as transaction_rank
from transactions 
)
select   user_id ,spend , transaction_date
from rank_f
WHERE transaction_rank=3
