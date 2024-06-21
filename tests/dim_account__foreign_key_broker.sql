select accounts.sk_broker_id
from {{ ref('dim_account') }} AS accounts
left join {{ ref('dim_broker') }} AS brokers
on accounts.sk_broker_id = brokers.sk_broker_id
where accounts.sk_account_id is null