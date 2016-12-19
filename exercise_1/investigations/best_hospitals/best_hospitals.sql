--SQL file to get the 10 best hospitals
--Transforming TABLE FOR effective_care_h
CREATE TABLE effective_care_h_2 as select provider_id, hospital_name, measure_id, score from effective_care_h;
CREATE TABLE effective_care_h_3 as select *, regexp_extract(score, '[0-9]+', 0) as score_num from effective_care_h_2;
CREATE TABLE effective_care_h_4 as select * from effective_care_h_3 where score_num <= 1000 and length(score) < 6;
CREATE TABLE effective_care_h_5 as select *, SUM(score_num) as total_score from effective_care_h_4;


SELECT * FROM effective_care_h_5 ORDER BY total_score DESC LIMIT 10;
