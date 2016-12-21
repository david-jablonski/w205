--SQL file hospitals_and_patients

CREATE TABLE hospitals_score
as select provider_id, hospital_name, SUM(score_num) as total_score 
from effective_care_h_4
group by provider_id, hospital_name

CREATE TABLE hospitals_and_patients
as select total_score,  
from effective_care_h_4, surveys_5
where effective_care_h_4.provider_id = surveys_5.provider_id;

--To print chart for report
select * from hospitals_and_patients;

