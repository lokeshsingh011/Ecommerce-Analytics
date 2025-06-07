{{ config(materialized='table') }}

SELECT
    customer_id,
    full_name,
    email,
    COUNT(order_id) AS total_orders,
    SUM(amount) AS total_spend
FROM {{ ref('int_customer_orders') }}
GROUP BY customer_id, full_name, email