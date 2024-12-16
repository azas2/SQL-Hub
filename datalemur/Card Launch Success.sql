WITH CODE AS(

SELECT card_name,issued_amount,
Row_number() over(partition by card_name  order by issued_amount asc) as my_rank_data
from monthly_cards_issued 
)
select card_name , issued_amount from CODE
where my_rank_data=1
ORDER by card_name DESC
