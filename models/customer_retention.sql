SELECT
    customer_unique_id,
    DATE(MIN(order_date)) AS first_purchase_date,
    DATE(MAX(order_date)) AS last_purchase_date,
    COUNT(DISTINCT order_id) AS total_orders

FROM {{ ref('final_orders') }}

GROUP BY customer_unique_id
