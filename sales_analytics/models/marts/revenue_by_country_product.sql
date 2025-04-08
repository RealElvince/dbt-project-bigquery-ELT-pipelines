-- Breaks down revenue by both product and country
SELECT
  country,
  product_name,
  SUM(amount) AS revenue
FROM
  {{ref('stg_sales')}}
GROUP BY country,product_name