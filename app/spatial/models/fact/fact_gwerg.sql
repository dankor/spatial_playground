
select 
    erg_id as erg_id,
    gestein_id as gestein_id,
    shape_star as shape_star,
    shape_stle as shape_stle,
    geom as geom,
    1 as count
from 
    {{ ref('raw_gwerg') }}