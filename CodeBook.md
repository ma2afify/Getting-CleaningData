##Code book for the data
* Names of the variables in the tidy data set (81 variable):
- subject 		(ranged from 1 to 30 indicating each of the 30 volunteers in the experiment)
- activity		(Response variable including six possible activities "WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING ")
- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z	
- tGravityAcc-mean()-X	
- tGravityAcc-mean()-Y	
- tGravityAcc-mean()-Z	
- tGravityAcc-std()-X	
- tGravityAcc-std()-Y	
- tGravityAcc-std()-Z	
- tBodyAccJerk-mean()-X	
- tBodyAccJerk-mean()-Y	
- tBodyAccJerk-mean()-Z	
- tBodyAccJerk-std()-X	
- tBodyAccJerk-std()-Y	
- tBodyAccJerk-std()-Z	
- tBodyGyro-mean()-X	
- tBodyGyro-mean()-Y	
- tBodyGyro-mean()-Z	
- tBodyGyro-std()-X	
- tBodyGyro-std()-Y	
- tBodyGyro-std()-Z	
- tBodyGyroJerk-mean()-X	
- tBodyGyroJerk-mean()-Y	
- tBodyGyroJerk-mean()-Z	
- tBodyGyroJerk-std()-X	
- tBodyGyroJerk-std()-Y	
- tBodyGyroJerk-std()-Z	
- tBodyAccMag-mean()	
- tBodyAccMag-std()	
- tGravityAccMag-mean()	
- tGravityAccMag-std()	
- tBodyAccJerkMag-mean()	
- tBodyAccJerkMag-std()	
- tBodyGyroMag-mean()	
- tBodyGyroMag-std()	
- tBodyGyroJerkMag-mean()	
- tBodyGyroJerkMag-std()	
- fBodyAcc-mean()-X	
- fBodyAcc-mean()-Y	
- fBodyAcc-mean()-Z	
- fBodyAcc-std()-X	
- fBodyAcc-std()-Y	
- fBodyAcc-std()-Z	
- fBodyAcc-meanFreq()-X	
- fBodyAcc-meanFreq()-Y	
- fBodyAcc-meanFreq()-Z	
- fBodyAccJerk-mean()-X	
- fBodyAccJerk-mean()-Y	
- fBodyAccJerk-mean()-Z	
- fBodyAccJerk-std()-X	
- fBodyAccJerk-std()-Y	
- fBodyAccJerk-std()-Z	
- fBodyAccJerk-meanFreq()-X	
- fBodyAccJerk-meanFreq()-Y	
- fBodyAccJerk-meanFreq()-Z	
- fBodyGyro-mean()-X	
- fBodyGyro-mean()-Y	
- fBodyGyro-mean()-Z	
- fBodyGyro-std()-X	
- fBodyGyro-std()-Y	
- fBodyGyro-std()-Z	
- fBodyGyro-meanFreq()-X	
- fBodyGyro-meanFreq()-Y	
- fBodyGyro-meanFreq()-Z	
- fBodyAccMag-mean()	
- fBodyAccMag-std()	
- fBodyAccMag-meanFreq()	
- fBodyBodyAccJerkMag-mean()	
- fBodyBodyAccJerkMag-std()	
- fBodyBodyAccJerkMag-meanFreq()	
- fBodyBodyGyroMag-mean()	
- fBodyBodyGyroMag-std()	
- fBodyBodyGyroMag-meanFreq()	
- fBodyBodyGyroJerkMag-mean()	
- fBodyBodyGyroJerkMag-std()	
- fBodyBodyGyroJerkMag-meanFreq()

* Steps perfomed for obtaining the tidy data set:
1- Analyzing the data
File Containing Training Set: 'train/X_train.txt'
File Containing Training Labels: 'train/y_train.txt'
File Containing Test Set: 'test/X_test.txt'
File Containing Test Labels: 'test/y_test.txt'

The purpose is to learn what activity an object is doing based on features produced by sensors of a SmartPhone,
The set of features consist of 561 features

2- Merge the training and the test sets to create one data set.
 a) load the training data set.
 b) load the test data set.
 c) bind them together.
 d) load training subject.
 e) load test subject.
 f) bind them together.
 g) add them as a new column to the data set. 
 h) load training labels.
 i) load test labels.
 j) bind them together.
 k) add them as a new column to the data set. 

3- Extract only the measurements on the mean and standard deviation for each measurement. 
 a) read the features.txt file that holds features names.
 b) extract indices for the features that contains mean or std in their text.
 c) from the data set remove all other features.
 
4- Appropriately label the data set with descriptive variable names. 
 a) label the first columns with the names extracted from features file.
 b) label the last two columns (subject, activity) respectively.

5- Use descriptive activity names to name the activities in the data set.
 a) load the names from the activity labels file.
 b) Assign each activity its corresponding label.
 
6- From the data set in step 5, create a second, independent tidy data set with the average of each variable for each activity and each subject.
 a) Use the aggregate function to group the data and apply the mean on each.
 
7- Writing the tidy data set.
 a) Using the write.table() method 
