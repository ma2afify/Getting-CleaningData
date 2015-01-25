## Merge the training and the test sets to create one data set.
#Load the training data and test data then bind them together
X_train <- read.table("~/Getting&CleaningData/train/X_train.txt", quote="\"", stringsAsFactors=FALSE, colClasses=c(rep("numeric",561)), row.names=NULL)
X_test <- read.table("~/Getting&CleaningData/test/X_test.txt", quote="\"", stringsAsFactors=FALSE, colClasses=c(rep("numeric",561)), row.names=NULL)

data <- rbind(X_train, X_test)

#Adding subject info
subject_train <- read.table("~/Getting&CleaningData/train/subject_train.txt", quote="\"")
subject_test <- read.table("~/Getting&CleaningData/test/subject_test.txt", quote="\"")

subject <- rbind(subject_train, subject_test)
data <- cbind(data, subject)

#Adding labels
y_train <- read.table("~/Getting&CleaningData/train/y_train.txt", quote="\"")
y_test <- read.table("~/Getting&CleaningData/test/y_test.txt", quote="\"")

labels <- rbind(y_train, y_test)
data <- cbind(data, labels)

## Extract only the measurements on the mean and standard deviation for each measurement. 
# Loading feature names
features <- read.table("~/Getting&CleaningData/features.txt", quote="\"", stringsAsFactors=FALSE)

# extract indices for the features that contains mean or std in their text
indi <- sort(c(grep("mean", features$V2, fixed = TRUE), grep("std", features$V2, fixed = TRUE)))

# from the data set remove all other features only 79 features remained + the 2 last features
subset <- c(indi, 562, 563)
newdata <- data[,subset] 

## Appropriately label the data set with descriptive variable names
names(newdata) <- c(features[indi,]$V2, "subject", "activity") 

## Use descriptive activity names to name the activities in the data set
activity_labels <- read.table("~/Getting&CleaningData/activity_labels.txt", quote="\"", stringsAsFactors=FALSE)
for (i in 1:length(activity_labels$V2)){ 
  newdata[newdata$activity==i,]$activity <- activity_labels[activity_labels$V1==i,]$V2 
}

## Create new data set by aggregating based on subject and activity
tidydata <- aggregate(. ~ subject+activity, newdata, function(x) c(mean=mean(x)))

## Writing the tidy data set
write.table(tidydata, file="tidydata.txt", row.names=FALSE)


