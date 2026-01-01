
--  1) What is the total revenue (Sales) generated?

SELECT SUM(sales) AS Total_Revenue
FROM sales;

-- 2) How many orders were successful vs Returned/Cancelled?

select count(*) as shipped_orders
from sales 
where sucesss = 1

-- 3) What is the Return/Cancel percentage?
SELECT 
    ROUND( (SUM(CASE WHEN sucesss = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2 ) 
    AS Return_Cancel_Percentage
FROM sales;

-- 4) Return/Cancel count by Product Category

select category,
	sum(case when sucesss = 0 then 1 else 0 end) as returned_cancelled
from sales 
group by category 

-- 5) Which Category generates the highest revenue?

select category,sum(sales) from sales
group by category