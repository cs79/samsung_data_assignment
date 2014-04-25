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


# merge sets (and cleaning beforehand, if required -- examine the data)

similar to quiz questions -- see History / notes for merging

X_test is the test data [2947 rows by 561 columns]
y_test are the "activity levels" of the data (1 - 6, coded activities) [1 per row, 2947 total]
(assuming similar for X_train and y_train; check this though)
features.txt has the list of features of an observation - e.g. a single "line" of X_test once it
is read into R will have 561 columns; these are the column names for that table [561 feature names]
  - check to make sure that the train files are similar dimensionality, assuming they should be

idea (may not be entirely right, but something to start with):
        use name() and the features.txt labels to label the columns in X_* files (if they are the
                                                                                  same)
        use cbind() to add the descriptive columns (y_*) on to the X_* sets
        convert the data in the descriptive column to something human-readable (later?)
        merge the two sets together (each of test and train should have names (that match) and 
                                     also a matched column of activity description)
        ???
        profit

# Extract certain measurements (into a new dataframe?)


#rename (use names() function) -- "appropriate names" (DON'T USE SPACES!!)
#MAKE SURE THIS GOES INTO THE CODE BOOK


#create new, independent, tidy data set



#write to csv ?