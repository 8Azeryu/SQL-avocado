with 
base as 
(
select 
	extract(year  from date) 			as year_nr
	,sum(total_volume)					as total_volume
from avocado a
group by 1
)
select
	b.year_nr
	,total_volume
from base b
order by year_nr asc