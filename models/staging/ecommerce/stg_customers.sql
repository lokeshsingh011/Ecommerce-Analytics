{{ config(materialized='view') }}

SELECT
    customer_id,
    first_name,
    last_name,
    email,
    CONCAT(first_name, ' ', last_name) AS full_name
FROM {{ source('ecommerce', 'customers') }}
WHERE email IS NOT NULL