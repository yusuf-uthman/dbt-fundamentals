select
    "ID" as customer_id,
    "FIRST_NAME",
    "LAST_NAME"
from {{source('jaffle_shop_src','jaffle_shop_customers')}}