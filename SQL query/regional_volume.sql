with 
base as (
select 
	region 
	,sum(total_volume) 	as total_volume 
from avocado a 
group by 1
),
tier_a as
(
select 
	region 
	,sum(4046)	 	as total_4046 
from avocado a 
group by 1
),
tier_b as 
(
select 
	region 
	,sum(4225) 		as total_4225
from avocado a 
group by 1 
),
tier_c as
(
select 
	region 
	,sum(4770) 		as total_4770 
from avocado a 
group by 1
)
select 
	tc.region
	,tc.total_4770
	,tb.total_4225
	,ta.total_4046
	,b.total_volume
from tier_c tc
inner join	tier_b tb on tc.region = tb.region
inner join 	tier_a ta on tb.region = ta.region
inner join  base	b on ta.region = b.region
