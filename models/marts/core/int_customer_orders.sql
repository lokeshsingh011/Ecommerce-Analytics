{{ config(materialized='table') }}

SELECT
    c.customer_id,
    c.full_name,
    c.email,
    o.order_id,
    o.order_date,
    o.amount
FROM {{ ref('stg_customers') }} c
LEFT JOIN {{ ref('stg_orders') }} o
    ON c.customer_id = o.customer_id