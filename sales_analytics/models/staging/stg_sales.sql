{{
  config(
    materialized = 'view',
    )
}}

SELECT
  order_id,
  product_name,
  amount,
  country,
  order_date,
  {{dynamic_partition('order_date','MONTH')}} -- dynamic partitioning

FROM
  `sales-analytics-456116.sales_dataset.raw_sales`