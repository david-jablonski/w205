/root/start-hadoop.sh
/data/start_postgres.sh
su - w205
hdfs dfs -mkdir /user/w205/exercise_1
wget https://github.com/david-jablonski/w205/blob/master/exercise_1/loading_and_modelling/import_hospital_files/Hospital_Revised_Flatfiles.zip
hdfs dfs -put Hospital_Revised_Flatfiles.zip /user/w205/exercise_1/loading_and_modelling
tail -n +2 /path/to/original > /path/to/new_file
tail -n +2 /path/to/original > /path/to/new_file
tail -n +2 /path/to/original > /path/to/new_file
tail -n +2 /path/to/original > /path/to/new_file
tail -n +2 /path/to/original > /path/to/new_file

