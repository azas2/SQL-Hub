with code as
(
select item_count	,
DENSE_RANK() OVER (ORDER BY order_occurrences DESC) as mode
FROM items_per_order 
)
SELECT item_count FROM code
where mode=1
order by item_count 
