select 
    sk_broker_id, 
    count(*) cnt
from {{ ref('dim_broker') }} 
group by sk_broker_id
having cnt > 1