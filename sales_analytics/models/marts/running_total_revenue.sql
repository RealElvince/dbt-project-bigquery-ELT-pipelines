SELECT
  order_date,
  SUM(amount) OVER (ORDER BY order_date) AS running_revenue
FROM {{ ref('stg_sales') }}
