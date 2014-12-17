
## run_analysis.R


This script assumes that the Samsung data has been dowloaded and saved to the working directory as "getdata-projectfiles-UCI HAR Dataset.zip". 

First, the script unzips the dowloaded .zip file and reads the relevant .txt files into data tables using `read.table()`. 

The following three data frames are then created using `rbind()`: 

  *  `total` is created by merging the data from "train/X\_train.txt" and "test/X\_test.txt"
  *  `activity` is created by merging data from "train/Y\_train.txt'" and "test/Y\_test.txt", and 
  *  `subject` is created by merging the data from "train/subject\_train.txt" and "test/subject\_test.txt". 

The following modifications are made: 

  *  `total` is subsetted so that it only includes variables corresponding to mean and standard deviation. 
  *  Each of the three data frames is given meaningful variable names, with the variable names for `total` extracted by subsetting the second column in the data from "features.txt". 
  *  The unique column in `activity`  is coerced to be a factor and then its levels are replaced with meaning activity names using the key provided in "activity_labels.txt". 
  

These three data frames are then merged using `cbind()` to create the data frame `TidyData`. 

Finally, averages are taken using `aggregate()` on the quantitative variables in `TidyData` in three different ways: 

  1. over each subject by disregarding the activity
  2. over each activity by disregarding the subject
  3. over each pair (subject, activity)

The three resulting data frames are merged into a single data frame `TidyData_Averages` using `rbind()` and meaningful variable names are recovered from `TidyData`. Using `write.table()`, a .txt file is exported from `TidyData_Averages`.  

 






