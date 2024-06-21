select sk_broker_id
from {{ ref('dim_broker') }} 
where sk_broker_id is null