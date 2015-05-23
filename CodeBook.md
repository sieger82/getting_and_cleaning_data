# Tidy dataset codebook

### Information from the original README.txt
```
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
```

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

# Information from the original features_info.txt
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

# The tidy dataset
The tidy dataset is created from the raw dataset by running the R script "run_analysis.R" with the raw dataset file "getdata-projectfiles-UCI HAR Dataset.zip" in the current working directory.

The resulting tidy dataset file is written to disk by the script as: "tidy_UCI_HAR_Dataset.txt" in a standard space delimited file format.

The tidy dataset only includes 66 of the original 561 variables because only the mean() and std() measurements are included.

The dataset contains a total of 10299 observations of 68 variables (66 measurements + subject ID + activity level)

# Variables in dataset

Subject.ID 
	ID of the research subject
		Factor w/ 30 levels: 1 ... 30
		
Activity
	Activity performed while wearing the accelerometer
	Factor w/ 6 levels: 
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

tBodyAcc.mean.X 
	Mean value of X body acceleration (time domain)
		normalized and bounded within [-1,1]
tBodyAcc.mean.Y 
	Mean value of Y body acceleration (time domain)
		normalized and bounded within [-1,1]
tBodyAcc.mean.Z 
	Mean value of Z body acceleration (time domain)
		normalized and bounded within [-1,1]
tBodyAcc.std.X 
	Standard deviation of X body acceleration (time domain)
		normalized and bounded within [-1,1]
tBodyAcc.std.Y 
	Standard deviation of Y body acceleration (time domain)
		normalized and bounded within [-1,1]
tBodyAcc.std.Z 
	Standard deviation of Z body acceleration (time domain)
		normalized and bounded within [-1,1]
tGravityAcc.mean.X 
	Mean value of X gravity acceleration (time domain)
		normalized and bounded within [-1,1]
tGravityAcc.mean.Y 
	Mean value of Y gravity acceleration (time domain)
		normalized and bounded within [-1,1]
tGravityAcc.mean.Z 
	Mean value of Z gravity acceleration (time domain)
		normalized and bounded within [-1,1]
tGravityAcc.std.X 
	Standard deviation of X gravity acceleration (time domain)
		normalized and bounded within [-1,1]
tGravityAcc.std.Y 
	Standard deviation of Y gravity acceleration (time domain)
		normalized and bounded within [-1,1]
tGravityAcc.std.Z 
	Standard deviation of Z gravity acceleration (time domain)
		normalized and bounded within [-1,1]
tBodyAccJerk.mean.X 
	Mean value of X body acceleration jerk measurement (time domain)
		normalized and bounded within [-1,1]
tBodyAccJerk.mean.Y 
	Mean value of Y body acceleration jerk measurement (time domain)
		normalized and bounded within [-1,1]
tBodyAccJerk.mean.Z 
	Mean value of Z body acceleration jerk measurement (time domain)
		normalized and bounded within [-1,1]
tBodyAccJerk.std.X 
	Standard deviation of X body acceleration jerk measurement (time domain)
		normalized and bounded within [-1,1]
tBodyAccJerk.std.Y 
	Standard deviation of Y body acceleration jerk measurement  (time domain)
		normalized and bounded within [-1,1]
tBodyAccJerk.std.Z 
	Standard deviation of Z body acceleration jerk measurement (time domain)
		normalized and bounded within [-1,1]
tBodyGyro.mean.X 
	Mean value of X body gyroscope (time domain)
		normalized and bounded within [-1,1]
tBodyGyro.mean.Y 
	Mean value of Y body gyroscope (time domain)
		normalized and bounded within [-1,1]
tBodyGyro.mean.Z 
	Mean value of Z body gyroscope (time domain)
		normalized and bounded within [-1,1]
tBodyGyro.std.X 
	Standard deviation of X body gyroscope (time domain)
		normalized and bounded within [-1,1]
tBodyGyro.std.Y 
	Standard deviation of Y body gyroscope (time domain)
		normalized and bounded within [-1,1]
tBodyGyro.std.Z 
	Standard deviation of Z body gyroscope (time domain)
		normalized and bounded within [-1,1]
tBodyGyroJerk.mean.X 
	Mean value of X body gyroscope jerk measurement (time domain)
		normalized and bounded within [-1,1]
tBodyGyroJerk.mean.Y 
	Mean value of Y body gyroscope jerk measurement (time domain)
		normalized and bounded within [-1,1]
tBodyGyroJerk.mean.Z 
	Mean value of Z body gyroscope jerk measurement (time domain)
		normalized and bounded within [-1,1]
tBodyGyroJerk.std.X  (time domain)
	Standard deviation of X body gyroscope jerk measurement (time domain)
		normalized and bounded within [-1,1]
tBodyGyroJerk.std.Y 
	Standard deviation of Y body gyroscope jerk measurement (time domain)
		normalized and bounded within [-1,1]
tBodyGyroJerk.std.Z 
	Standard deviation of Z body gyroscope jerk measurement (time domain)
		normalized and bounded within [-1,1]
tBodyAccMag.mean. 
	Mean value of body acceleration magnitude (time domain)
		normalized and bounded within [-1,1]
tBodyAccMag.std. 
	Standard deviation of body acceleration magnitude (time domain)
		normalized and bounded within [-1,1]
tGravityAccMag.mean. 
	Mean value of gravity acceleration magnitude (time domain)
		normalized and bounded within [-1,1]
tGravityAccMag.std.
	Standard deviation of gravity acceleration magnitude (time domain)
		normalized and bounded within [-1,1]
tBodyAccJerkMag.mean. 
	Mean value of body acceleration jerk measurement magnitude (time domain)
		normalized and bounded within [-1,1]
tBodyAccJerkMag.std. 
	Standard deviation of body acceleration jerk measurement magnitude (time domain)
		normalized and bounded within [-1,1]
tBodyGyroMag.mean. 
	Mean value of body gyroscope magnitude (time domain)
		normalized and bounded within [-1,1]
tBodyGyroMag.std. 
	Standard deviation of body gyroscope magnitude (time domain)
		normalized and bounded within [-1,1]
tBodyGyroJerkMag.mean. 
	Mean value of body gyroscope jerk measurement magnitude (time domain)
		normalized and bounded within [-1,1]
tBodyGyroJerkMag.std. 
	Standard deviation of body gyroscope jerk measurement magnitude (time domain)
		normalized and bounded within [-1,1]
fBodyAcc.mean.X 
	Mean value of X body acceleration (frequency domain)
		normalized and bounded within [-1,1]
fBodyAcc.mean.Y 
	Mean value of Y body acceleration (frequency domain)
		normalized and bounded within [-1,1]
fBodyAcc.mean.Z 
	Mean value of Z body acceleration (frequency domain)
		normalized and bounded within [-1,1]
fBodyAcc.std.X 
	Standard deviation of X body acceleration (frequency domain)
		normalized and bounded within [-1,1]
fBodyAcc.std.Y 
	Standard deviation of Y body acceleration (frequency domain)
		normalized and bounded within [-1,1]
fBodyAcc.std.Z 
	Standard deviation of Z body acceleration (frequency domain)
		normalized and bounded within [-1,1]
fBodyAccJerk.mean.X 
	Mean value of x body acceleration jerk measurement (frequency domain)
		normalized and bounded within [-1,1]
fBodyAccJerk.mean.Y 
	Mean value of Y body acceleration jerk measurement (frequency domain)
		normalized and bounded within [-1,1]
fBodyAccJerk.mean.Z 
	Mean value of Z body acceleration jerk measurement (frequency domain)
		normalized and bounded within [-1,1]
fBodyAccJerk.std.X 
	Standard deviation of X body acceleration jerk measurement (frequency domain)
		normalized and bounded within [-1,1]
fBodyAccJerk.std.Y 
	Standard deviation of Y body acceleration jerk measurement (frequency domain)
		normalized and bounded within [-1,1]
fBodyAccJerk.std.Z 
	Standard deviation of Z body acceleration jerk measurement (frequency domain)
		normalized and bounded within [-1,1]
fBodyGyro.mean.X 
	Mean value of X body gyroscope (frequency domain)
		normalized and bounded within [-1,1]
fBodyGyro.mean.Y 
	Mean value of Y body gyroscope (frequency domain)
		normalized and bounded within [-1,1]
fBodyGyro.mean.Z 
	Mean value of Z body gyroscope (frequency domain)
		normalized and bounded within [-1,1]
fBodyGyro.std.X 
	Standard deviation of X body gyroscope (frequency domain)
		normalized and bounded within [-1,1]
fBodyGyro.std.Y 
	Standard deviation of Y body gyroscope (frequency domain)
		normalized and bounded within [-1,1]
fBodyGyro.std.Z 
	Standard deviation of Z body gyroscope (frequency domain)
		normalized and bounded within [-1,1]
fBodyAccMag.mean. 
	Mean value of body acceleration magnitude (frequency domain)
		normalized and bounded within [-1,1]
fBodyAccMag.std. 
	Standard deviation of body acceleration magnitude (frequency domain)
		normalized and bounded within [-1,1]
fBodyBodyAccJerkMag.mean. 
	Mean value of body acceleration jerk measurement magnitude (frequency domain)
		normalized and bounded within [-1,1]
fBodyBodyAccJerkMag.std. 
	Standard deviation of body acceleration jerk measurement magnitude (frequency domain)
		normalized and bounded within [-1,1]
fBodyBodyGyroMag.mean. 
	Mean value of body gyroscope magnitude (frequency domain)
		normalized and bounded within [-1,1]
fBodyBodyGyroMag.std. 
	Standard deviation of body gyroscope magnitude (frequency domain)
		normalized and bounded within [-1,1]
fBodyBodyGyroJerkMag.mean. 
	Mean value of body gyroscope jerk measurement magnitude (frequency domain)
		normalized and bounded within [-1,1]
fBodyBodyGyroJerkMag.std.
	Standard deviation of body gyroscope jerk measurement magnitude (frequency domain)
		normalized and bounded within [-1,1]
