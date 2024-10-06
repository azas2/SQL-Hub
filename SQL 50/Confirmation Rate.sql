SELECT S.user_id,
ROUND(COUNT(CASE WHEN co.action='confirmed' THEN 1 ELSE NULL END)*1.0/ COUNT(S.user_id),2) as confirmation_rate
FROM Signups S
LEFT JOIN Confirmations co
ON S.user_id=co.user_id
GROUP BY S.user_id

