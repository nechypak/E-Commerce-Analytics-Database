-- Show most recent order for each customer

WITH ordered AS ( -- distinguish orders from same customers by date 
	SELECT c.customer_id, c.name, o.order_id, o.order_date,
		ROW_NUMBER() OVER (PARTITION BY c.customer_id ORDER BY o.order_date DESC, o.order_id DESC) AS row_num
	FROM customers c
	JOIN orders o ON o.customer_id = c.customer_id
)

SELECT customer_id, name, order_id, order_date
FROM ordered
WHERE row_num = 1
ORDER BY customer_id;