select bike_number, end_time
from
(select e.*, rank() over(partition by bike_number order by end_time desc) as rnk 
from dc_bikeshare_q1_2012 e) x
where x.rnk<2
order by end_time desc;