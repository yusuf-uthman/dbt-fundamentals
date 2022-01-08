with orders as (
    select * from {{ ref('stg_orders') }}
),
payments as (
    select * from {{ ref('stg_payments') }}
),
order_payments as (
    select 
        order_id,
        sum (case when "STATUS" = 'success' then amount else 0 end) as amount
    from payments
    GROUP BY order_id
),
final as (
    select 
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        coalesce(order_payments.amount,0) as amount
    FROM orders 
    LEFT join order_payments
    on orders.order_id  = order_payments.order_id
)
select * from final