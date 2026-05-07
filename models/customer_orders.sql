select 
 o.order_id,
 o.customer_id,
 c.customer_unique_id,
 c.customer_city,
 c.customer_state,
 o.order_status,
 o.order_purchase_timestamp

from 
{{ref('stg_orders')}} o 
left join 
{{ref('stg_customers')}} c 
on o.customer_id = c.customer_id