-- Most revenue (price * quatity) by region

SELECT c.region, 
	SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON p.product_id = o.product_id
GROUP BY c.region
ORDER BY revenue DESC;