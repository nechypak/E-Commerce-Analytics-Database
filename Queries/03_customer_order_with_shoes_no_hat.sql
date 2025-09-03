-- Show customers who bought shoes but never hat 

SELECT DISTINCT c.customer_id, c.name
FROM customers c
WHERE EXISTS ( -- Exists order with shoes
  SELECT *
  FROM orders o
  JOIN products p ON p.product_id = o.product_id
  WHERE o.customer_id = c.customer_id AND p.category = 'Shoes'
)
AND NOT EXISTS ( -- And the same ordere where does not exists hat
  SELECT *
  FROM orders o
  JOIN products p ON p.product_id = o.product_id
  WHERE o.customer_id = c.customer_id AND p.category = 'Hat'
)
ORDER BY c.customer_id;