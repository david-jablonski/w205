--SQL file for the top 100 hosiptal variability

select *, VARIANCE(score_num) as variance_score 
from effective_care_s_4
group by measure_id
order by VARIANCE(score_num) desc
limit 10;
