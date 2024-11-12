/* Write your T-SQL query statement below */
WITH make_rank as(
    SELECT *,
     DENSE_RANK() OVER ( PARTITION BY product_id  ORDER BY year  ASC ) as my_product
     FROM Sales    
)
select mk.product_id, 
    year AS first_year , 
    quantity
    ,price
FROM make_rank AS mk
INNER JOIN  Product AS po
ON mk.product_id=po.product_id
WHERE my_product=1
