with 
base as 
(
select
	distinct year_nr
	,extract(month from date) 			as month_nr
	,sum(total_volume)					as total_volume
from avocado a
group by 1,2
)
select
	year_nr
	,b.month_nr
	,total_volume
from base b
order by year_nr asc