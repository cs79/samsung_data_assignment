## You should create one R script called run_analysis.R that does the following:

## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement. 
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive activity names. 
## Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 



# 1. Getting the data:

if(!file.exists("./data")) {dir.create("./data")}
zipURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#Windows:
download.file(zipURL, destfile="./data/samsungdata.zip")
#Mac:
download.file(zipURL, destfile="./data/samsungdata.zip", method="curl")
dateDownloaded <- date()


# 2. Extract zip archive:

unzip("./data/samsungdata.zip", exdir = "./data")


# 3. Read in data and labels; merge sets

xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")

features <- read.table("./data/UCI HAR Dataset/features.txt")
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## name cols in the datasets
names(xtest) <- features$V2
names(xtrain) <- features$V2

## add activity labels to the datasets
xtest$activityCode <- ytest$V1
xtrain$activityCode <- ytrain$V1

## combine the test and training data
combinedData <- rbind(xtest, xtrain)


## 4. Extract measurements on means and standard deviations





#rename (use names() function) -- "appropriate names" (DON'T USE SPACES!!)
#MAKE SURE THIS GOES INTO THE CODE BOOK

idea (may not be entirely right, but something to start with):
        convert the data in the descriptive column to something human-readable (later?)



#create new, independent, tidy data set



#write to csv ?