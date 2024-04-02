
select 
    erg_id, 
    max(ergiebigke_name) as ergiebigke_name 
from (
    select 
        erg_id, 
        coalesce(ergiebigke,'-') as ergiebigke_name
    from {{ ref('raw_gwerg') }}
    union all
    select 
        erg_id, 
        coalesce(ergiebigke,'-') as ergiebigke_name
    from {{ ref('raw_gwerg_erg') }}
)
group by 1