--SQL file for the top 10 most variability among procedures in the different hospitals

CREATE TABLE best_hospitals
as select *, VARIANCE(score_num) as variance_score 
from effective_care_s_4
group by measure_id
order by VARIANCE(score_num) desc
limit 10;
