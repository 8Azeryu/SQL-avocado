select 
	extract(year from date) as "year"
	,round(avg(average_price), 1) 	as averege_yearly
from avocado a
group by 1