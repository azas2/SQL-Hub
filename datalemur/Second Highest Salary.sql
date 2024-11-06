SELECT  DISTINCT(SELECT MAX(salary) from employee where salary < (SELECT  MAX(salary) from employee))
FROM employee 
