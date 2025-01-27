SELECT drug,max(total_sales-cogs) as total_profit
FROM pharmacy_sales
group by drug
order by total_profit desc
limit 3
