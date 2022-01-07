with orders as (
    select * from {{ ref('stg_orders') }}
),
payments as (
    select * from {{ ref('stg_payments') }}
),
final as (
    select 
        orders.order_id,
        orders.customer_id,
        payments."AMOUNT"
    FROM orders 
    LEFT join payments
    on orders.order_id  = payments.order_id
)
select * from final