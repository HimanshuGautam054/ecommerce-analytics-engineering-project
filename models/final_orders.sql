SELECT
    co.order_id,
    co.customer_id,
    co.customer_unique_id,
    co.customer_city,
    co.customer_state,
    co.order_status,
    DATE(co.order_purchase_timestamp) AS order_date,
    orv.total_product_value,
    orv.total_freight_value,
    orv.total_order_value

FROM {{ ref('customer_orders') }} co
LEFT JOIN {{ ref('order_revenue') }} orv
    ON co.order_id = orv.order_id