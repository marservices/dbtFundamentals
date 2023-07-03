with dim_customers as (
    select * from {{ ref('dim_customers') }}
)

select
    customer_id
from
    dim_customers
where
    first_order_date is null
    and most_recent_order_date is null
    and number_of_orders > 0