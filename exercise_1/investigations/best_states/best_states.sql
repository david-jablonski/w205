--SQL file to get the 10 best states

CREATE TABLE effective_care_s_2 as select state, measure_id, score from effective_care_s;
CREATE TABLE effective_care_s_3 as select *, regexp_extract(score, '[0-9]+', 0) as score_num from effective_care_s_2;
CREATE TABLE effective_care_s_4 as select * from effective_care_s_3 where score_num <= 1000 and length(score) < 6;

select *, VARIANCE(score_num) as variance_score 
from effective_care_s_4
group by provider_id
order by VARIANCE(score_num) desc
limit 10;
