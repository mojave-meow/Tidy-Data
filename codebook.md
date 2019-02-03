**Codebook for tidydata.txt**

The descriptions found in this codebook are originally found in the UCI HAR Dataset available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Description of subjects and activities (from README.txt and activity_labels.txt in the UCI HAR Dataset):

This study was carried out with a group of 30 volunteers ranging from 19 to 48 years old. Each volunteer performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a amsung Galaxy S smartphone on thier waist. Using the embedded accelerometer and gyroscope, researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The study was video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.

subject: identifier of the volunteer who participated in the study  
activity: type of spatial movement correpsonding to a numeric label  
  * 1 WALKING  
  * 2 WALKING_UPSTAIRS  
  * 3 WALKING_DOWNSTAIRS  
  * 4 SITTING  
  * 5 STANDING  
  * 6 LAYING  

Description of variables (from features_info.txt in the UCI HAR Dataset): 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Units of variables (from README.txt in the UCI HAR Dataset):
  * total acc: The acceleration signal from the smartphone accelerometer in standard gravity units 'g'.
  * body acc: The body acceleration signal obtained by subtracting the gravity from the total acceleration.
  * body gyro: The angular velocity vector measured by the gyroscope for each window sample in radians/second. 

List of variables (from features_info.txt in the UCI HAR Dataset):

  * tBodyAcc-XYZ  
  * tGravityAcc-XYZ  
  * tBodyAccJerk-XYZ  
  * tBodyGyro-XYZ  
  * tBodyGyroJerk-XYZ  
  * tBodyAccMag  
  * tGravityAccMag  
  * tBodyAccJerkMag  
  * tBodyGyroMag  
  * tBodyGyroJerkMag  
  * fBodyAcc-XYZ  
  * fBodyAccJerk-XYZ  
  * fBodyGyro-XYZ  
  * fBodyAccMag  
  * fBodyAccJerkMag  
  * fBodyGyroMag  
  * fBodyGyroJerkMag  

Use of this dataset must be acknowledged by referencing the following publication: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.
