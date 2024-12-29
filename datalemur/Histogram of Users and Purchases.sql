WITH latest_transactions_cte AS (
  SELECT 
    transaction_date, 
    user_id, 
    product_id, 
    DENSE_RANK() OVER (
      PARTITION BY user_id 
      ORDER BY transaction_date DESC) AS transaction_rank 
  FROM user_transactions) 
  
SELECT transaction_date, 
    user_id,count(product_id)
FROM latest_transactions_cte
WHERE transaction_rank = 1 
group by transaction_date, 
    user_id
