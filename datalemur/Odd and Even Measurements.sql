
WITH make_rank AS (
    SELECT 
        cast(measurement_time as DATE) as m_day ,
        measurement_value,
        ROW_NUMBER() OVER (PARTITION BY cast(measurement_time as DATE)  ORDER BY measurement_time) AS number_rank
    FROM measurements
)
SELECT 
     m_day,
    SUM(measurement_value) FILTER(WHERE number_rank % 2 !=0 ) AS odd_sum,
    SUM(measurement_value) FILTER(WHERE number_rank % 2 =0) AS even_sum
FROM make_rank
GROUP BY m_day
