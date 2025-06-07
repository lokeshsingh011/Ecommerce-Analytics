{{ config(materialized='view') }}

SELECT
    product_id,
    product_name,
    category
FROM {{ source('ecommerce', 'products') }}
WHERE product_name IS NOT NULL