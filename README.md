repo - Datacleaning
====

Script  run_analysis.R 

This script works with the Data from the experiments that have been carried out with a group of 30 volunteers within 
an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,
SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, it was captured 3-axial linear acceleration and 3-axial angular velocity
at a constant rate of 50Hz. 

More detail of the experiment could be obtained in:

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================



This script merges the training and the test sets of the experiment and extract the mean {mean()} 
and standard deviation {std()} of the variables:

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

**** the '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

In addition it include labels to the Data and writes a new tidy Filtered Data named "finalData.txt".
