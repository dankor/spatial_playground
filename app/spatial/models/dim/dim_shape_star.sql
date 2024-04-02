
select distinct shape_star as shape_star
from {{ ref('raw_bergbaugebiete') }}
union 
select distinct shape_star as shape_star
from {{ ref('raw_gwerg') }}
union 
select distinct shape_star as shape_star
from {{ ref('raw_gwerg_erg') }}
union 
select distinct shape_star as shape_star
from {{ ref('raw_gwerg_gestein') }}