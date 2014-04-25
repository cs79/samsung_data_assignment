## You should create one R script called run_analysis.R that does the following:

## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement. 
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive activity names. 
## Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 



# Getting the data:

if(!file.exists("./data")) {dir.create("./data")}
zipURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#Windows:
download.file(zipURL, destfile="./data/")
#Mac:
download.file(zipURL, destfile="./data/", method="curl")
dateDownloaded <- date()


# extract the stuff from the zip file

look up how to do this with one of the *zip packages

# merge sets (and cleaning beforehand, if required -- examine the data)

similar to quiz questions -- see History / notes for merging


# Extract certain measurements (into a new dataframe?)


#rename (use names() function) -- "appropriate names" (DON'T USE SPACES!!)
#MAKE SURE THIS GOES INTO THE CODE BOOK


#create new, independent, tidy data set



#write to csv ?