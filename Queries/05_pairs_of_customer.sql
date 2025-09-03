-- Pairs of customers from the same region

SELECT c1.region,
	c1.customer_id AS customer_a_id, c1.name AS customer_a,
	c2.customer_id AS customer_b_id, c2.name AS customer_b
FROM customers c1
JOIN customers c2
	ON c1.region = c2.region 
		AND c1.customer_id < c2.customer_id -- handling duplicates 
ORDER BY c1.region, customer_a_id, customer_b_id;