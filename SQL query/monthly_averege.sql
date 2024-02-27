with 
base as 
(
select 
	extract(month from date) 			as month_nr
	,round(avg(average_price), 1) 		as averege_mothly
from avocado a
group by 1
)
select
	b.month_nr
	,b.averege_mothly
from base b
order by month_nr asc