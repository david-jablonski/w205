--SQL file to create a table to get the 10 best states

CREATE TABLE best_states
as select state, SUM(score_num) as state_score 
from effective_care_s_4
group by state
order by state_score desc
limit 10;

--To print chart for report
select * from best_states;
