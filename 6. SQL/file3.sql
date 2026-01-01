-- 11) Category-wise Average Selling Price

select category ,
avg(amount ) as selling_price
from sales
group by category 
order by selling_price desc

-- 12) Total Orders fulfilled by Merchant vs Amazon

SELECT 
    fulfilment,
    COUNT(*) AS Total_Orders,
    SUM(sales) AS Total_Revenue
FROM sales
GROUP BY fulfilment;



-- 13) Which Fulfilment type has highest return percentage?

SELECT 
    fulfilment,
    SUM(CASE WHEN sucesss = 0 THEN 1 ELSE 0 END) AS Returns,
    ROUND((SUM(CASE WHEN sucesss = 0 THEN 1 ELSE 0 END)*100.0/COUNT(*)),2) AS Return_Rate
FROM sales
GROUP BY fulfilment
ORDER BY Return_Rate DESC;

-- 14) City-wise order count (Top 5 cities)

SELECT 
  'ship-city',
    COUNT(*) AS Total_Orders
FROM sales
GROUP BY 'ship_city'
ORDER BY Total_Orders DESC
LIMIT 5;