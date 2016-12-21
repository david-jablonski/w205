--SQL file to create a table to get the 10 best hospitals

CREATE TABLE best_hospitals 
as select provider_id, hospital_name, SUM(score_num) as total_score 
from effective_care_h_4
group by provider_id, hospital_name
order by total_score desc
limit 10;

--To print chart for report
select * from best_hospitals;
