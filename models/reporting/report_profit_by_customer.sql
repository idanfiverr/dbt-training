select
    customerid,
    segment,
    country,
    subcategory,
    sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by
    customerid,
    segment,
    country,
    subcategory