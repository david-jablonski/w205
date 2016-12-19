--Transforming TABLE FOR effective_care_h
CREATE TABLE effective_care_h_2 as select provider_id, hospital_name, measure_id, score from effective_care_h;
UPDATE effective_care_h_2 SET score = '0' WHERE score = 'Not Available';

--Transforming TABLE FOR effective_care_s
CREATE TABLE effective_care_s_2 as select state, measure_id, score from effective_care_s;
UPDATE effective_care_s_2 SET score = '0' WHERE score = 'Not Available';

--Transforming TABLE FOR complications_h
CREATE TABLE complications_h_2 as select provider_id, hospital_name, measure_id, score from complications_h;
UPDATE complications_h_2 SET score = '0' WHERE score = 'Not Available';

--Transforming TABLE FOR complications_s
CREATE TABLE complications_s_2 as select state, measure_id, number_of_hospitals_worse, number_of_hospitals_same, number_of_hospitals_better, number_of_hospitals_too_few from complications_s;
UPDATE complications_s_2 SET number_of_hospitals_worse = '0' WHERE score = 'Not Available';
UPDATE complications_s_2 SET number_of_hospitals_same = '0' WHERE score = 'Not Available';
UPDATE complications_s_2 SET number_of_hospitals_better = '0' WHERE score = 'Not Available';
UPDATE complications_s_2 SET number_of_hospitals_too_few = '0' WHERE score = 'Not Available';

--Transforming TABLE FOR imaging_h
CREATE TABLE imaging_h_2 as select provider_id, hospital_name, measure_id, score from imaging_h;
UPDATE imaging_h_2 SET score = '0' WHERE score = 'Not Available';

--Transforming TABLE FOR imaging_s
CREATE TABLE imaging_s_2 as select state, measure_id, score from imaging_s;
UPDATE imaging_s_2 SET score = '0' WHERE score = 'Not Available';

--Transforming TABLE FOR infections_h
CREATE TABLE infections_h_2 as select provider_id, hospital_name, measure_id, score from infections_h;
UPDATE infections_h_2 SET score = '0' WHERE score = 'Not Available';

--Transforming TABLE FOR infections_s
CREATE TABLE infections_s_2 as select state, measure_id, score from infections_s;
UPDATE infections_s_2 SET score = '0' WHERE score = 'Not Available';

--Transforming TABLE FOR readmissions_h
CREATE TABLE readmissions_h_2 as select provider_id, hospital_name, measure_id, score from readmissions_h;
UPDATE readmissions_h_2 SET score = '0' WHERE score = 'Not Available';

--Transforming TABLE FOR readmissions_s
CREATE TABLE readmissions_s_2 as select state, measure_id, number_of_hospitals_worse, number_of_hospitals_same, number_of_hospitals_better, number_of_hospitals_too_few from readmissions_s;
UPDATE readmissions_s_2 SET number_of_hospitals_worse = '0' WHERE score = 'Not Available';
UPDATE readmissions_s_2 SET number_of_hospitals_same = '0' WHERE score = 'Not Available';
UPDATE readmissions_s_2 SET number_of_hospitals_better = '0' WHERE score = 'Not Available';
UPDATE readmissions_s_2 SET number_of_hospitals_too_few = '0' WHERE score = 'Not Available';




create table newtable as select column1, column2, column3 from oldtable



