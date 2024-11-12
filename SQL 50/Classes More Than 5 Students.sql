SELECT class
FROM ( SELECT class ,
 COUNT(student ) AS totle_student  FROM Courses 
 GROUP BY class
HAVING COUNT(student )>= 5
 ) as temp_table
