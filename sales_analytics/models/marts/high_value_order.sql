--Filters for large orders
SELECT *
FROM
  {{ref('stg_sales')}}
WHERE amount > 1000