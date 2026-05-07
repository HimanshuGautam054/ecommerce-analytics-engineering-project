select 
order_id,
sum(price) as total_product_value,
sum(freight_value) as total_freight_value,
sum(price + freight_value) as total_order_value

from {{ref('stg_order_item')}}
group by order_id