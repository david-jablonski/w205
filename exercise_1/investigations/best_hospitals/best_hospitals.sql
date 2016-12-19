--SQL file to get the 10 best hospitals
--Transforming TABLE FOR effective_care_h

select *, SUM(score_num) as total_score 
from effective_care_h_4
group by provider_id
order by SUM(score_num) desc
limit 10;
