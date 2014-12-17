
## TidyData_Averages.txt

#Information about the variables: 

Variables 1-2 are: 

 * SubjectID - Either an integer between 1 and 30 indicating the ID number associated to the subject OR "ALL Subjects" indicating that data from all subjects was used.

 * ActivityName - The name of the activity the subject was performing while the measurements were being recordered OR "ALL Activities" indicating that data from all activities was used. The six possible activities are "WALKING", "WALKING\_UPSTAIRS", "WALKING\_DOWNSTAIRS", "SITTING",  "STANDING", and "LAYING".

Ranging over all data for the indicated SubjectID and ActivityName from the first two variables, the variables 3-68 provide the MEAN of the _features_ indicated in the variable names. The variable names each have one of the following two formats: 

 1. "&lt; name\>-&lt;summary tool>"
 2. "&lt;name>-&lt;summary tool>-&lt;axis>"

The _feature_ indicated by the first format is computed using the summary tool indicated by &lt;summary tool> over the variable indicated by &lt;name>. The _feature_ indicated by the second format is computed using the summary tool indicated by &lt;summary tool> over the variable indicated by &lt;name> measured in the direction indicated by &lt;axis>. In both cases, it is not necessary to specify units because the features have been normalized so that they are bounded within [-1, 1]. 

IMPORTANT NOTE: The variable name indicates the _features_ that were averaged to produce the corresponding variable. For example, the variable labeled "tGravityAccMag.std.." is the MEAN of all standard deviations (normalized to be within [-1, 1]) computed for measurements of tGravityAccMag while the subject indicated in variable 1 was performing the activity indicated in variable 2. Similarly, the variable "tGravityAccMag.mean.." is the MEAN of all means (normalized to be within [-1, 1]) computed for measurements of tGravityAccMag while the subject indicated in variable 1 was performing the activity indicated in variable 2.

The possible values of &lt;name>, &lt;summary tool>, and &lt;axis> are:

* &lt;name>  is a time or frequence domain variable from the following list: 

 * tBodyAcc
 * tGravityAcc 
 * tBodyAccJerk 
 * tBodyGyro
 * tBodyGyroJerk 
 * tBodyAccMag
 * tGravityAccMag
 * tBodyAccJerkMag
 * tBodyGyroMag
 * tBodyGyroJerkMag
 * fBodyAcc
 * fBodyAccJerk
 * fBodyGyro
 * fBodyAccMag
 * fBodyAccJerkMag
 * fBodyGyroMag
 * fBodyGyroJerkMag

* &lt;summary tool> is either "mean()" to indicated mean or "std()" to indicate standard deviation. 
 
* &lt;axis> is either "X", "Y", or "Z" to indicate the x-direction, y-direction, or z-direction. 
 


#Information about the features:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally, a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 




#Information about the experiment:




The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

# Data source:

The data came from the following source: 

*Human Activity Recognition Using Smartphones Dataset*

*Version 1.0*

*Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.*

*Smartlab - Non Linear Complex Systems Laboratory*

*DITEN - University degli Studi di Genova.*

*Via Opera Pia 11A, I-16145, Genoa, Italy.*

*activityrecognition@smartlab.ws*

*www.smartlab.ws*
