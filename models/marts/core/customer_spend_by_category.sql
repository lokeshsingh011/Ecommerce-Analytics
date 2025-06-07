{{ config(materialized='table') }}

SELECT
    d.full_name,
    d.total_orders,
    d.total_spend,
    SUM(f.amount) AS category_spend
FROM {{ ref('dim_customers') }} d
JOIN {{ ref('fct_orders') }} f
    ON d.customer_id = f.customer_id
GROUP BY d.full_name, d.total_orders, d.total_spend, f.category
ORDER BY d.total_spend DESC