
select distinct shape_stle as shape_stle
from {{ ref('raw_bergbaugebiete') }}
union 
select distinct shape_stle as shape_stle
from {{ ref('raw_gwerg') }}
union 
select distinct shape_stle as shape_stle
from {{ ref('raw_gwerg_erg') }}
union 
select distinct shape_stle as shape_stle
from {{ ref('raw_gwerg_gestein') }}
union 
select distinct shape_stle as shape_stle
from {{ ref('raw_gwerg_gestein') }}
union 
select distinct shape_stle as shape_stle
from {{ ref('raw_uferfiltrat') }}