with code as(
select count(order_id) as total from orders 
)

select 
case 
  when order_id %2!=0 and  order_id!= total then order_id+1
  when total = order_id then order_id
  ELSE order_id-1
  END as corrected_order_id
  ,item
  from orders 
  cross join code
  order by corrected_order_id asc
  
  
