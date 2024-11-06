
SELECT  extract(month from submit_date) as mth ,  product_id as product , round(AVG(stars),2)as avg_stars
from reviews 
group by extract(month from submit_date) ,product_id 
ORDER BY extract(month from submit_date) ASC , product_id asc
