SELECT query_name,
ROUND(avg((rating*1.0/position)),2) AS quality,
CASE 
        WHEN COUNT(*) > 0 THEN 
            ROUND((SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 1.0 / COUNT(*))*100,2)
        ELSE 
            0 
    END AS poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name
