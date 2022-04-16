select
  customer_id,
from {{ ref('stg_orders') }} o
left join {{ ref('stg_customers') }} c
on o.customer_id = c.customer_id
where c.customer_id is null