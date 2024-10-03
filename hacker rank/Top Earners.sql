select top (1)
(salary*months) AS earnings , 
count (*) AS total_customer from Employee
GROUP BY salary*months
ORDER BY salary*months DESC;