SELECT product_name , S.year  ,S.price 
From Sales S inner join Product P
on S.product_id = p.product_id
