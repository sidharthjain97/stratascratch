select activity_date, count(*)
from los_angeles_restaurant_health_inspections
group by activity_date
order by activity_date asc;