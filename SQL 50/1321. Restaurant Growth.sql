with last_6_day as(
    SELECT DISTINCT visited_on
    FROM Customer 
    ORDER BY visited_on ASC 
    OFFSET 6
) 

select d1.visited_on,
SUM(d2.amount) as amount,
ROUND(sum (d2.amount)/7.,2) as average_amount
FROM last_6_day as d1
inner join Customer as d2
ON d2.visited_on Between d1.visited_on - 6 AND d1.visited_on 
GROUP BY d1.visited_on
