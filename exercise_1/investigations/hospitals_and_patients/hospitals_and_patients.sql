--SQL file hospitals_and_patients

CREATE TABLE hospitals_and_patients
as select total_score,  
from effective_care_h_4, surveys_5
where effective_care_h_4.provider_id = surveys_5.provider_id;

--To print chart for report
select * from hospitals_and_patients;

