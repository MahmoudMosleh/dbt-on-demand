with orders as (

    select * from {{ ref('stg_orders') }}

),
payments as
(

    select * from {{ ref('stg_payments') }}
),
final as(
    select 
        o.order_id,
        o.customer_id,
        p.amount
    from     orders o
    left join payments p
    on o.order_id = p.orderid

)
select * from final