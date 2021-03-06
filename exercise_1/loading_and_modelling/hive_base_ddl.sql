--CREATING TABLE FOR HOSPITAL INFORMATION
CREATE EXTERNAL TABLE hospital_info (provider_id STRING, hospital_name STRING, address STRING, city STRING, state STRING, 
                                     zip_code STRING, county_name STRING, phone_number STRING, hospital_type STRING, 
                                     hospital_ownership STRING, emergency_services STRING)  
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/hospital_info'; 



--CREATING TABLE FOR Measures info
CREATE EXTERNAL TABLE measures (measure_name STRING, measure_id STRING, measure_start_quater STRING, measure_start_date STRING, 
                                     measure_end_quarter STRING, measure_end_date STRING)  
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/measures'; 



--CREATING TABLE FOR surveys
CREATE EXTERNAL TABLE surveys (provider_id STRING, hospital_name STRING, address STRING, city STRING, state STRING, 
                               zip_code STRING, county_name STRING, cnap STRING, cnip STRING, cnds STRING,
                               cdap STRING, cdip STRING, cdds STRING, rhsap STRING, rhsip STRING, rhsds STRING,
                               pmap STRING, pmip STRING, pmds STRING, cqheap STRING, cqheip STRING, cqheds STRING,
                               diap STRING, diip STRING, dids STRING, orhap STRING, orhip STRING, orhds STRING,
                               achievement_points STRING, improvement_points STRING, dimension_score STRING,
                               hcahps_base_score STRING, hcahps_consistency_score STRING)  
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/surveys'; 


--CREATING TABLE FOR effective_care_h
CREATE EXTERNAL TABLE effective_care_h (provider_id STRING, hospital_name STRING, address STRING, city STRING, state STRING, 
                                     zip_code STRING, county_name STRING, phone_number STRING, condtion STRING, 
                                     measure_id STRING, measure_name STRING, score STRING, sample STRING, footnote STRING, 
                                     measure_start_date STRING, measure_end_date STRING)  
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/effective_care_h'; 



--CREATING TABLE FOR effective_care_s
CREATE EXTERNAL TABLE effective_care_s (state STRING, condtion STRING, measure_name STRING, measure_id STRING,
                                     score STRING, footnote STRING, measure_start_date STRING, measure_end_date STRING)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/effective_care_s'; 



--CREATING TABLE FOR complications_h
CREATE EXTERNAL TABLE complications_h (provider_id STRING, hospital_name STRING, address STRING, city STRING, state STRING, 
                                     zip_code STRING, county_name STRING, phone_number STRING, measure_name STRING, measure_id STRING, 
                                     compared_to_national STRING, denominator STRING, score STRING, lower_estimate STRING, higher_estimate STRING, 
                                     footnote STRING, measure_start_date STRING, measure_end_date STRING) 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/complications_h'; 



--CREATING TABLE FOR complications_s
CREATE EXTERNAL TABLE complications_s (state STRING, measure_name STRING, measure_id STRING, number_of_hospitals_worse STRING,
                                    number_of_hospitals_same STRING, number_of_hospitals_better STRING, number_of_hospitals_too_few STRING,  
                                    footnote STRING, measure_start_date STRING, measure_end_date STRING)  
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/complications_s';



--CREATING TABLE FOR imaging_h
CREATE EXTERNAL TABLE imaging_h (provider_id STRING, hospital_name STRING, address STRING, city STRING, state STRING, 
                              zip_code STRING, county_name STRING, phone_number STRING, 
                              measure_id STRING, measure_name STRING, score STRING, footnote STRING, 
                              measure_start_date STRING, measure_end_date STRING) 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/imaging_h'; 



--CREATING TABLE FOR imaging_s
CREATE EXTERNAL TABLE imaging_s (state STRING, measure_id STRING, measure_name STRING,
                              score STRING, footnote STRING, measure_start_date STRING, measure_end_date STRING)   
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/imaging_s'; 



--CREATING TABLE FOR infections_h
CREATE EXTERNAL TABLE infections_h (provider_id STRING, hospital_name STRING, address STRING, city STRING, state STRING, 
                                   zip_code STRING, county_name STRING, phone_number STRING, measure_name STRING, measure_id STRING, 
                                   compared_to_national STRING, score STRING,  
                                   footnote STRING, measure_start_date STRING, measure_end_date STRING)   
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/infections_h'; 

--CREATING TABLE FOR infections_s                             
CREATE EXTERNAL TABLE infections_s (state STRING, measure_name STRING, measure_id STRING,
                                  score STRING, footnote STRING, measure_start_date STRING, measure_end_date STRING)   
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/infections_s'; 



--CREATING TABLE FOR readmissions_h
CREATE EXTERNAL TABLE readmissions_h (provider_id STRING, hospital_name STRING, address STRING, city STRING, state STRING, 
                                   zip_code STRING, county_name STRING, phone_number STRING, measure_name STRING, measure_id STRING, 
                                   compared_to_national STRING, denominator STRING, score STRING, lower_estimate STRING, higher_estimate STRING, 
                                   footnote STRING, measure_start_date STRING, measure_end_date STRING)   
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/readmissions_h'; 

--CREATING TABLE FOR readmissions_s                             
CREATE EXTERNAL TABLE readmissions_s (state STRING, measure_name STRING, measure_id STRING, number_of_hospitals_worse STRING,
                                    number_of_hospitals_same STRING, number_of_hospitals_better STRING, number_of_hospitals_too_few STRING,  
                                    footnote STRING, measure_start_date STRING, measure_end_date STRING)  
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
   "separatorChar" = ",", 
   "quoteChar"     = '"', 
   "escapeChar"    = '\\' 
) 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/readmissions_s'; 


--Load data into tables
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/hospital_info/hospital_info.csv' INTO TABLE hospital_info;
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/measures/measures.csv' INTO TABLE measures;
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/surveys/surveys.csv' INTO TABLE surveys;
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/effective_care_h/effective_care_h.csv' INTO TABLE effective_care_h;
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/effective_care_s/effective_care_s.csv' INTO TABLE effective_care_s;
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/complications_h/complications_h.csv' INTO TABLE complications_h;
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/complications_s/complications_s.csv' INTO TABLE complications_s;
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/infections_h/infections_h.csv' INTO TABLE infections_h;
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/infections_s/infections_s.csv' INTO TABLE infections_s;
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/imaging_h/imaging_h.csv' INTO TABLE imaging_h;
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/imaging_s/imaging_s.csv' INTO TABLE imaging_s;
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/readmissions_h/readmissions_h.csv' INTO TABLE readmissions_h;
LOAD DATA INPATH 'hdfs:/user/w205/hospital_compare/readmissions_s/readmissions_s.csv' INTO TABLE readmissions_s;
