SELECT concat(Name,'(',left(occupation,1),')') 
FROM OCCUPATIONS
order by name;
select concat('There are a total of ',count(occupation),' ',lower(occupation), 's.')
from OCCUPATIONS 
GROUP BY occupation
order by count(occupation)asc, lower(occupation)


