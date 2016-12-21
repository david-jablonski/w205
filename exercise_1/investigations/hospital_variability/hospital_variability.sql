--SQL file for the top 10 most variability among procedures in the different hospitals

CREATE TABLE hospital_variability
as select measure_id, VARIANCE(score_num) as variance_score 
from effective_care_h_4
group by measure_id
order by variance_score desc
limit 10;

--To print chart for report
select * from hospital_variability;
