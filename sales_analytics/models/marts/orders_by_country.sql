-- Aggregates total orders and revenue per country.
SELECT
  country,
  COUNT(order_id) AS total_orders,
  SUM(amount) AS total_revenue
FROM
  {{ref('stg_sales')}}
GROUP BY country