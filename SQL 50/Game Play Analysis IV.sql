SELECT ROUND(
    CAST(
        SUM(
            CASE WHEN DATEDIFF(DAY,A2.event_date,A1.event_date)=1 THEN 1 ELSE 0 END
        ) AS FLOAT 
       )
        /COUNT(DISTINCT A1.player_id ) ,2
    ) AS fraction 
FROM Activity A1 
INNER JOIN (
    SELECT player_id
     , MIN(event_date) AS event_date
    FROM Activity
    GROUP BY player_id
) A2
ON A1.player_id=A2.player_id
