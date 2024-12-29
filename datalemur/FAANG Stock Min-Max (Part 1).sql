with max_open as(
 select ticker,To_Char(date,'Mon-YYYY') as highest_mth ,max(open) as high_open,
 ROW_NUMBER() OVER (PARTITION BY ticker order by open desc) as first_row
 from stock_prices 
 GROUP by ticker,To_Char(date,'Mon-YYYY'),open
),
min_open as(
select ticker, to_char(date,'Mon-YYYY') as lowest_mth,min(open) as lowest_open,
ROW_NUMBER() OVER (PARTITION BY ticker order by open asc ) as min_row
from stock_prices 
 GROUP by ticker,To_Char(date,'Mon-YYYY'),open
)

select m1.ticker,m1.highest_mth,m1.high_open,m2.lowest_mth,m2.lowest_open
from max_open as m1
inner join min_open as m2
ON m1.ticker =m2.ticker
where m1.first_row=1 and m2.min_row =1
