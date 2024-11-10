WITH make_row_number AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY customer_id  ORDER BY order_date) AS row_column
    FROM Delivery
),
first_order AS (
    SELECT * 
    FROM make_row_number
    WHERE row_column = 1
)
SELECT ROUND(
    (SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
    2
) AS immediate_percentage
FROM first_order;
