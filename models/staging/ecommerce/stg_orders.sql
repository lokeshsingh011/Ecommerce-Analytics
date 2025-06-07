{{ config(materialized='view') }}

SELECT
    order_id,
    customer_id,
    order_date,
    amount
FROM {{ source('ecommerce', 'orders') }}
WHERE amount > 0