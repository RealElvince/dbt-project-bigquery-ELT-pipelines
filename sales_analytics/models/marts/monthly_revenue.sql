SELECT
  DATE_TRUNC(order_date,MONTH) AS month,
  SUM(amount) AS monthly_sales
FROM
  {{ ref('stg_sales') }}
GROUP BY month
ORDER BY month