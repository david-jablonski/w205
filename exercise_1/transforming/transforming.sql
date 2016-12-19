--Transforming TABLE FOR effective_care_h
CREATE TABLE effective_care_h_2 as select provider_id, hospital_name, measure_id, score from effective_care_h;
CREATE TABLE effective_care_h_3 as select *, regexp_extract(score, '[0-9]+', 0) as score_num from effective_care_h_2;
CREATE TABLE effective_care_h_4 as select * from effective_care_h_3 where score_num <= 1000 and length(score) < 6;


--Transforming TABLE FOR effective_care_s
CREATE TABLE effective_care_s_2 as select state, measure_id, score from effective_care_s;
CREATE TABLE effective_care_s_3 as select *, regexp_extract(score, '[0-9]+', 0) as score_num from effective_care_s_2;
CREATE TABLE effective_care_s_4 as select * from effective_care_s_3 where score_num <= 1000 and length(score) < 6;


--Transforming TABLE FOR complications_h
CREATE TABLE complications_h_2 as select provider_id, hospital_name, measure_id, score from complications_h;
CREATE TABLE complications_h_3 as select *, regexp_extract(score, '[0-9]+', 0) as score_num from complications_h_2;
CREATE TABLE complications_h_4 as select * from complications_h_3 where score_num <= 250 and length(score) < 6;


--Transforming TABLE FOR complications_s
CREATE TABLE complications_s_2 as select state, measure_id, number_of_hospitals_worse, number_of_hospitals_same, number_of_hospitals_better, number_of_hospitals_too_few from complications_s;
CREATE TABLE complications_h_3 as select *, regexp_extract(number_of_hospitals_better, '[0-9]+', 0) as score_num from complications_h_2;
CREATE TABLE complications_h_4 as select * from complications_h_3 where score_num <= 20 and length(score) < 6;


--Transforming TABLE FOR imaging_h
CREATE TABLE imaging_h_2 as select provider_id, hospital_name, measure_id, score from imaging_h;
CREATE TABLE imaging_h_3 as select *, regexp_extract(score, '[0-9]+', 0) as score_num from imaging_h_2;
CREATE TABLE imaging_h_4 as select * from imaging_h_3 where score_num <= 100 and length(score) < 6;


--Transforming TABLE FOR imaging_s
CREATE TABLE imaging_s_2 as select state, measure_id, score from imaging_s;
CREATE TABLE imaging_s_3 as select *, regexp_extract(score, '[0-9]+', 0) as score_num from imaging_s_2;
CREATE TABLE imaging_s_4 as select * from imaging_s_3 where score_num <= 100 and length(score) < 6;


--Transforming TABLE FOR infections_h
CREATE TABLE infections_h_2 as select provider_id, hospital_name, measure_id, score from infections_h;
CREATE TABLE infections_h_3 as select *, regexp_extract(score, '[0-9]+', 0) as score_num from infections_h_2;
CREATE TABLE infections_h_4 as select * from infections_h_3 where score_num <= 10 and length(score) < 6;


--Transforming TABLE FOR infections_s
CREATE TABLE infections_s_2 as select state, measure_id, score from infections_s;
CREATE TABLE infections_s_3 as select *, regexp_extract(score, '[0-9]+', 0) as score_num from infections_s_2;
CREATE TABLE infections_s_4 as select * from infections_s_3 where score_num <= 10 and length(score) < 6;


--Transforming TABLE FOR readmissions_h
CREATE TABLE readmissions_h_2 as select provider_id, hospital_name, measure_id, score from readmissions_h;
CREATE TABLE readmissions_h_3 as select *, regexp_extract(score, '[0-9]+', 0) as score_num from readmissions_h_2;
CREATE TABLE readmissions_h_4 as select * from readmissions_h_3 where score_num <= 40 and length(score) < 6;


--Transforming TABLE FOR readmissions_s
CREATE TABLE readmissions_s_2 as select state, measure_id, number_of_hospitals_worse, number_of_hospitals_same, number_of_hospitals_better, number_of_hospitals_too_few from readmissions_s;
CREATE TABLE readmissions_s_3 as select *, regexp_extract(number_of_hospitals_better, '[0-9]+', 0) as score_num from readmissions_s_2;
CREATE TABLE readmissions_s_4 as select * from readmissions_s_3 where score_num <= 10 and length(score) < 6;

