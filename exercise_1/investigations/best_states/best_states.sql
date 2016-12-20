--SQL file to create a table to get the 10 best states

CREATE TABLE best_states
as select *, SUM(score_num) as state_score 
from effective_care_s_4
group by state
order by SUM(score_num) desc
limit 10;
