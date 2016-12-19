--SQL file for the top 100 hosiptal variability
CREATE TABLE effective_care_h_2 as select provider_id, hospital_name, measure_id, score from effective_care_h;
CREATE TABLE effective_care_h_3 as select *, regexp_extract(score, '[0-9]+', 0) as score_num from effective_care_h_2;
CREATE TABLE effective_care_h_4 as select * from effective_care_h_3 where score_num <= 1000 and length(score) < 6;

