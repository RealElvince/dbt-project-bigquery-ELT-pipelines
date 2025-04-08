-- Tracks how orders and revenue trend daily
SELECT
  order_date,
  COUNT(order_id) AS daily_order,
  SUM(amount) AS daily_revenue
FROM {{ref('stg_sales')}}
GROUP BY order_date