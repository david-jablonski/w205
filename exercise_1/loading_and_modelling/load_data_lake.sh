#Starting Hadoop and Postgres
/root/start-hadoop.sh
/data/start_postgres.sh

#Creating files to store the files
su - w205
hdfs dfs -mkdir /user/w205/exercise_1
hdfs dfs -mkdir /user/w205/hospital_compare

#Pulling the files github after unzipping them outside of AWS
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Hospital_Revised_Flatfiles.zip
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Hospital%20General%20Information.csv
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Measure%20Dates.csv
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/hvbp_hcahps_05_28_2015.csv
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Timely%20and%20Effective%20Care%20-%20Hospital%20-%20smaller.csv
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Timely%20and%20Effective%20Care%20-%20State.csv
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Complications%20-%20Hospital.csv
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Complications%20-%20State.csv
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Healthcare%20Associated%20Infections%20-%20Hospital.csv
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Healthcare%20Associated%20Infections%20-%20State.csv
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Outpatient%20Imaging%20Efficiency%20-%20Hospital.csv
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Outpatient%20Imaging%20Efficiency%20-%20State.csv
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Readmissions%20and%20Deaths%20-%20Hospital.csv
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Readmissions%20and%20Deaths%20-%20State.csv

#Stripping the top line and putting the files in /user/w205/hospital_compare
tail -n +2 '/home/w205/Hospital General Information.csv' > /home/w205/hospital_info.csv
tail -n +2 '/home/w205/Measure Dates.csv' > /home/w205/measures.csv
tail -n +2 '/home/w205/hvbp_hcahps_05_28_2015.csv' > /home/w205/surveys.csv
tail -n +2 '/home/w205/Timely and Effective Care - Hospital - smaller.csv' > /home/w205/effective_care_h.csv
tail -n +2 '/home/w205/Timely and Effective Care - State.csv' > /home/w205/effective_care_s.csv
tail -n +2 '/home/w205/Complications - Hospital.csv' > /home/w205/complications_h.csv
tail -n +2 '/home/w205/Complications - State.csv' > /home/w205/complications_s.csv
tail -n +2 '/home/w205/Healthcare Associated Infections - Hospital.csv' > /home/w205/infections_h.csv
tail -n +2 '/home/w205/Healthcare Associated Infections - State.csv' > /home/w205/infections_s.csv
tail -n +2 '/home/w205/Outpatient Imaging Efficiency - Hospital.csv' > /home/w205/imaging_h.csv
tail -n +2 '/home/w205/Outpatient Imaging Efficiency - State.csv' > /home/w205/imaging_s.csv
tail -n +2 '/home/w205/Readmissions and Deaths - Hospital.csv' > /home/w205/readmissions_h.csv
tail -n +2 '/home/w205/Readmissions and Deaths - State.csv' > /home/w205/readmissions_s.csv

#Putting the files in /user/w205/hospital_compare
hdfs dfs -put hospital_info.csv /user/w205/hospital_compare
hdfs dfs -put measures.csv /user/w205/hospital_compare
hdfs dfs -put surveys.csv /user/w205/hospital_compare
hdfs dfs -put effective_care_h.csv /user/w205/hospital_compare
hdfs dfs -put effective_care_s.csv /user/w205/hospital_compare
hdfs dfs -put complications_h.csv /user/w205/hospital_compare
hdfs dfs -put complications_s.csv /user/w205/hospital_compare
hdfs dfs -put infections_h.csv /user/w205/hospital_compare
hdfs dfs -put infections_s.csv /user/w205/hospital_compare
hdfs dfs -put imaging_h.csv /user/w205/hospital_compare
hdfs dfs -put imaging_s.csv /user/w205/hospital_compare
hdfs dfs -put readmissions_h.csv /user/w205/hospital_compare
hdfs dfs -put readmissions_s.csv /user/w205/hospital_compare







