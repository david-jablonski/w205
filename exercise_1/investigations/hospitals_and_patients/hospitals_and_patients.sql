--SQL file hospitals_and_patients

CREATE TABLE hospitals_score
as select provider_id, hospital_name, SUM(score_num) as total_score 
from effective_care_h_4
group by provider_id, hospital_name;

CREATE TABLE hospitals_and_patients
as select total_score, score_total
from hospitals_score, surveys_5
where hospitals_score.provider_id = surveys_5.provider_id;

CREATE TABLE hospitals_and_patients_2
as select corr(total_score, score_total) as corr_score 
from hospitals_and_patients;

--To print chart for report
select corr_score from hospitals_and_patients_2;

