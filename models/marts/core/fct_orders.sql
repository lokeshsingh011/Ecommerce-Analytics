{{ config(materialized='table') }}

SELECT
    o.order_id,
    o.customer_id,
    o.full_name,
    o.order_date,
    o.amount,
    p.product_name,
    p.category
FROM {{ ref('int_customer_orders') }} o
LEFT JOIN {{ ref('stg_products') }} p
    ON o.order_id = p.product_id -- Simplified join