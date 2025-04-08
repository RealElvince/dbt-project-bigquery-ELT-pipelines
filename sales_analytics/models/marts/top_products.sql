-- Ranks products based on total sales
SELECT
  product_name,
  COUNT(order_id) AS order_count,
  SUM(amount) AS total_sales
FROM 
  {{ref('stg_sales')}}
GROUP BY product_name
ORDER BY total_sales DESC