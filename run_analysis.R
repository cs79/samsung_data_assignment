## This script will download, process, and output a derivative subset of a data
## collection obtained from the internet.  Please see README.md and CodeBook.md
## for further details on this script and the variables it outputs.

## 1. Getting the data:

if(!file.exists("./data")) {dir.create("./data")}
zipURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## Windows:
download.file(zipURL, destfile="./data/samsungdata.zip")
## Mac:
download.file(zipURL, destfile="./data/samsungdata.zip", method="curl")
dateDownloaded <- date()


## 2. Extract zip archive:

unzip("./data/samsungdata.zip", exdir = "./data")


## 3. Read in data and labels; merge sets

xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

features <- read.table("./data/UCI HAR Dataset/features.txt")
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## name feature cols in the datasets
names(xtest) <- features$V2
names(xtrain) <- features$V2

## add subject IDs and activity labels to the datasets
xtest <- cbind(subjectID = subjectTest$V1, activityCode = ytest$V1, xtest)
xtrain <- cbind(subjectID = subjectTrain$V1, activityCode = ytrain$V1, xtrain)

## combine the test and training data
combinedData <- rbind(xtest, xtrain)


## 4. Extract measurements on means and standard deviations

meanStdCols <- sort(c(grep("mean", features$V2), grep("std", features$V2)))
meanFreqCols <- grep("meanFreq", features$V2)
extractCols <- meanStdCols[!meanStdCols %in% meanFreqCols]
extractData <- combinedData[,c(1, 2, (extractCols+2))]


## 5. Create tidy dataset with labeled activity names and write to file

## melt and cast - NOTE: requires reshape2 package to be installed
## please run install.packages("reshape2") if you have not installed already
library(reshape2)
molten <- melt(extractData, id=names(extractData)[1:2])
reshaped <- dcast(molten, formula=subjectID + activityCode ~ variable,mean)

## update column labels to denote that these are now average columns
avgNames <- (names(reshaped)[1:2])
namevector <- names(reshaped)
for(i in 3:ncol(reshaped)) {
        avgNames <- c(avgNames, paste("Average", namevector[i], sep = ""))
}
names(reshaped) <- gsub("[[:punct:]]", "", avgNames)

## label activities with activity name rather than code key
for(i in 1:nrow(reshaped))  {
        swap <- reshaped[i,]$activityCode
        reshaped[i,]$activityCode <- as.character(activities[swap,"V2"])
}

## export tidy file

write.table(reshaped, file="./data/tidySamsungData.txt")
