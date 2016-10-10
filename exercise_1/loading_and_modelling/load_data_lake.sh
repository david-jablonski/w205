#Starting Hadoop and Postgres
/root/start-hadoop.sh
/data/start_postgres.sh

#Creating files to store the files
su - w205
hdfs dfs -mkdir /user/w205/exercise_1
hdfs dfs -mkdir /user/w205/hospital_compare


#Pulling the files github after unzipping them outside of AWS
wget https://data.medicare.gov/views/bg9k-emty/files/Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip
unzip 'Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip; charset=binary'

#Stripping the top line and putting the files in /user/w205/hospital_compare
tail -n +2 '/home/w205/Hospital General Information.csv' > /home/w205/hospital_info.csv
tail -n +2 '/home/w205/Measure Dates.csv' > /home/w205/measures.csv
tail -n +2 '/home/w205/hvbp_hcahps_05_28_2015.csv' > /home/w205/surveys.csv
tail -n +2 '/home/w205/Timely and Effective Care - Hospital.csv' > /home/w205/effective_care_h.csv
tail -n +2 '/home/w205/Timely and Effective Care - State.csv' > /home/w205/effective_care_s.csv
tail -n +2 '/home/w205/Complications - Hospital.csv' > /home/w205/complications_h.csv
tail -n +2 '/home/w205/Complications - State.csv' > /home/w205/complications_s.csv
tail -n +2 '/home/w205/Healthcare Associated Infections - Hospital.csv' > /home/w205/infections_h.csv
tail -n +2 '/home/w205/Healthcare Associated Infections - State.csv' > /home/w205/infections_s.csv
tail -n +2 '/home/w205/Outpatient Imaging Efficiency - Hospital.csv' > /home/w205/imaging_h.csv
tail -n +2 '/home/w205/Outpatient Imaging Efficiency - State.csv' > /home/w205/imaging_s.csv
tail -n +2 '/home/w205/Readmissions and Deaths - Hospital.csv' > /home/w205/readmissions_h.csv
tail -n +2 '/home/w205/Readmissions and Deaths - State.csv' > /home/w205/readmissions_s.csv


#Creating the directories in /user/w205/hospital_compare
hdfs dfs -mkdir /user/w205/hospital_compare/hospital_info
hdfs dfs -mkdir /user/w205/hospital_compare/measures
hdfs dfs -mkdir /user/w205/hospital_compare/surveys
hdfs dfs -mkdir /user/w205/hospital_compare/effective_care_h
hdfs dfs -mkdir /user/w205/hospital_compare/effective_care_s
hdfs dfs -mkdir /user/w205/hospital_compare/complications_h
hdfs dfs -mkdir /user/w205/hospital_compare/complications_s
hdfs dfs -mkdir /user/w205/hospital_compare/infections_h
hdfs dfs -mkdir /user/w205/hospital_compare/infections_s
hdfs dfs -mkdir /user/w205/hospital_compare/imaging_h
hdfs dfs -mkdir /user/w205/hospital_compare/imaging_s
hdfs dfs -mkdir /user/w205/hospital_compare/readmissions_h
hdfs dfs -mkdir /user/w205/hospital_compare/readmissions_s


#Putting the files in there specific folders for reading into tables
hdfs dfs -put hospital_info.csv /user/w205/hospital_compare/hospital_info
hdfs dfs -put measures.csv /user/w205/hospital_compare/measures
hdfs dfs -put surveys.csv /user/w205/hospital_compare/surveys
hdfs dfs -put effective_care_h.csv /user/w205/hospital_compare/effective_care_h
hdfs dfs -put effective_care_s.csv /user/w205/hospital_compare/effective_care_s
hdfs dfs -put complications_h.csv /user/w205/hospital_compare/complications_h
hdfs dfs -put complications_s.csv /user/w205/hospital_compare/complications_s
hdfs dfs -put infections_h.csv /user/w205/hospital_compare/infections_h
hdfs dfs -put infections_s.csv /user/w205/hospital_compare/infections_s
hdfs dfs -put imaging_h.csv /user/w205/hospital_compare/imaging_h
hdfs dfs -put imaging_s.csv /user/w205/hospital_compare/imaging_s
hdfs dfs -put readmissions_h.csv /user/w205/hospital_compare/readmissions_h
hdfs dfs -put readmissions_s.csv /user/w205/hospital_compare/readmissions_s








