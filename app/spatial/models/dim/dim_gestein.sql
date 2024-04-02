
select 
    gestein_id as gestein_id,
    coalesce(max(gestein),'-') as gestein_name
from 
    {{ ref('raw_gwerg_gestein') }}
group by 1