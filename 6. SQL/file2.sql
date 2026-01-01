-- 6) Which price segment performs best in revenue?

select size_group,sum(sales)
from sales
group by sales.size_group 

-- 7) Which Size_Group sells the most? Regular vs Oversized

select 
	size_group ,
	count(*) as total_orders,
	sum(sales) as total_sales
from sales 
group by sales.size_group 

-- 8) Top 5 States generating highest revenue

SELECT 
    "ship-state",
    SUM(sales) AS total_sales
FROM sales
GROUP BY "ship-state"
ORDER BY total_sales DESC;


--9) Which Zone (North/South/East/West) performs best?

select "zone" , 
count(*) as total_sales
from sales 
group by "zone" 
order by total_sales desc


-- 10) Monthly sales trend (Month wise total sales)

SELECT 
    year,
    month,
    SUM(sales) AS Revenue
FROM sales
GROUP BY year, month
ORDER BY year, month;