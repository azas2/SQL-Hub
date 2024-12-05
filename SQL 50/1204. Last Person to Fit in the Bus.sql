WITH code AS (
SELECT  person_name  ,turn,
SUM(weight ) over (order by turn rows between UNBOUNDED PRECEDING  AND  CURRENT ROW) AS SUM_WEIGHT
FROM Queue
)
SELECT TOP 1 person_name FROM code 
WHERE SUM_WEIGHT<=1000
ORDER BY turn desc 
