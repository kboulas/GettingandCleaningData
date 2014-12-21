# README

# Samsung Data Analysis Project

## How the code works
When you source the "run_analysis.R" file, it will load several other source files:

1. importData: imports the data files and associated subject, and column heading data

2. labelActivity: Merges the two data sets and labels the data

3. processData: reshapes the data to include the means of 86 mean variables for each activity for each subject

4. tidyDat: outputs the tidy data to a text file

## Code Book
The final data includes activity, subject, and 86 variables representing the mean of the mean-sampled data variables gathered from the Samsung device:

### activity and subject data:

* ActivityLabel: the label for the activity the subject was doing - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

* Subject - an integer identifying the subject (of 30 volunteers) the data was taken for

### Mean data
The data represents the mean of the means of the 128 samples within each sampling window for 86 separate variables, based on various physical forces (that I don't have the physics knowledge to understand) as gathered from the accelerometer and gyroscope of the Samsung device:

* tBodyAcc.mean...X

* tBodyAcc.mean...Y

* tBodyAcc.mean...Z

* tBodyAcc.std...X

* tBodyAcc.std...Y

* tBodyAcc.std...Z

* tGravityAcc.mean...X

* tGravityAcc.mean...Y

* tGravityAcc.mean...Z

* tGravityAcc.std...X

* tGravityAcc.std...Y

* tGravityAcc.std...Z

* tBodyAccJerk.mean...X

* tBodyAccJerk.mean...Y

* tBodyAccJerk.mean...Z

* tBodyAccJerk.std...X

* tBodyAccJerk.std...Y

* tBodyAccJerk.std...Z

* tBodyGyro.mean...X

* tBodyGyro.mean...Y

* tBodyGyro.mean...Z

* tBodyGyro.std...X

* tBodyGyro.std...Y

* tBodyGyro.std...Z

* tBodyGyroJerk.mean...X

* tBodyGyroJerk.mean...Y

* tBodyGyroJerk.mean...Z

* tBodyGyroJerk.std...X

* tBodyGyroJerk.std...Y

* tBodyGyroJerk.std...Z

* tBodyAccMag.mean..

* tBodyAccMag.std..

* tGravityAccMag.mean..

* tGravityAccMag.std..

* tBodyAccJerkMag.mean..

* tBodyAccJerkMag.std..

* tBodyGyroMag.mean..

* tBodyGyroMag.std..

* tBodyGyroJerkMag.mean..

* tBodyGyroJerkMag.std..

* fBodyAcc.mean...X

* fBodyAcc.mean...Y

* fBodyAcc.mean...Z

* fBodyAcc.std...X

* fBodyAcc.std...Y

* fBodyAcc.std...Z

* fBodyAcc.meanFreq...X

* fBodyAcc.meanFreq...Y

* fBodyAcc.meanFreq...Z

* fBodyAccJerk.mean...X

* fBodyAccJerk.mean...Y

* fBodyAccJerk.mean...Z

* fBodyAccJerk.std...X

* fBodyAccJerk.std...Y

* fBodyAccJerk.std...Z

* fBodyAccJerk.meanFreq...X

* fBodyAccJerk.meanFreq...Y

* fBodyAccJerk.meanFreq...Z

* fBodyGyro.mean...X

* fBodyGyro.mean...Y

* fBodyGyro.mean...Z

* fBodyGyro.std...X

* fBodyGyro.std...Y

* fBodyGyro.std...Z

* fBodyGyro.meanFreq...X

* fBodyGyro.meanFreq...Y

* fBodyGyro.meanFreq...Z

* fBodyAccMag.mean..

* fBodyAccMag.std..

* fBodyAccMag.meanFreq..

* fBodyBodyAccJerkMag.mean..

* fBodyBodyAccJerkMag.std..

* fBodyBodyAccJerkMag.meanFreq..

* fBodyBodyGyroMag.mean..

* fBodyBodyGyroMag.std..

* fBodyBodyGyroMag.meanFreq..

* fBodyBodyGyroJerkMag.mean..

* fBodyBodyGyroJerkMag.std..

* fBodyBodyGyroJerkMag.meanFreq..

* angle.tBodyAccMean.gravity.

* angle.tBodyAccJerkMean..gravityMean.

* angle.tBodyGyroMean.gravityMean.

* angle.tBodyGyroJerkMean.gravityMean.

* angle.X.gravityMean.

* angle.Y.gravityMean.

* angle.Z.gravityMean."   
