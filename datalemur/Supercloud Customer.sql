select customer_id
from customer_contracts as cc
inner join products as pd
ON cc.product_id=pd.product_id
GROUP BY customer_id
having COUNT(DISTINCT product_category)= (select count(DISTINCT product_category) from products )
