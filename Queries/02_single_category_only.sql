-- Show customers with order in only one category 

WITH per_customer AS ( -- CTE to count distinct category orders for each customer 
	SELECT o.customer_id, 
		COUNT(DISTINCT p.category) AS cat_cnt
	FROM orders o
	JOIN products p ON p.product_id = o.product_id
	GROUP BY o.customer_id
)

SELECT c.customer_id, c.name, c.region
FROM per_customer pc
JOIN customers c ON c.customer_id = pc.customer_id
WHERE pc.cat_cnt = 1
ORDER BY c.customer_id;