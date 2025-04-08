-- Analyzes order patterns by day of week
SELECT 
  EXTRACT(DAYOFWEEK FROM order_date) AS week_day,
  COUNT(order_id) AS no_of_orders,
FROM 
  {{ref('stg_sales')}}
GROUP BY week_day
ORDER BY week_day