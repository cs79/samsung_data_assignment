## This document explains how the run_analysis.R script functions

### The script is divided into 6 numbered sections, as follows:
* 1. Getting the data
* 2. Extract zip archive
* 3. Read in data and labels; merge sets
* 4. Extract measurements on means and standard deviations
* 5. Label activities
* 6. Create tidy dataset and write to file

### 1. Getting the data
The script in this section sets zipURL to the URL of the zip file containing the data.
Two different download scripts are included (one each for Windows/Mac, to handle the https address)
dateDownloaded records the date of download, in case the linked zip file is altered on the backend

### 2. Extract zip archive
This part of the script simply unzips the contents of downloaded file to the same ./data directory for processing in subsequent sections

### 3. Read in data and labels; merge sets

This part of the script reads in 8 lists: the test and training sets, the activity levels and subject IDs for each of the test and training sets, the labels for the feature vectors (i.e. column names), and the activity code lookup key (for later use).

After reading in these lists, the script applies the column names to both the xtest and xtrain sets, adds an extra column "activityCode" to each of the test and training sets with the appropriate values from ytest and ytrain, respectively, adds an extra column "subjectID" to each of the test and training sets with the appropriate values from subjectTest and subjectTrain, respectively, and finally combines the sets which now share 563 common columns

### 4. Extract measurements on means and standard deviations

This part of the script creates an index vector of the columns with variablenames containing "mean" or "std", then subsets the combined dataset on those column indices, along with the last two columns that contain the activity code and subject ID

N.B. that mean frequencies are excluded from the extraction as they are not statistics of direct measurements, but of frequencies of measurements.  If mean frequencies are desired in the subset for analysis, the run_analysis.R code may be modified as follows: change "meanStdCols" preceding the assignment operator in the first line of this section of the script to "extractCols", and delete the following two lines

### 5. Label activities

The loop in this part of the script fetches the activity code for each observation, looks it up in the "activities" lookup key that was read into R during step 3, and swaps the value for the activity character string.

A couple things to note here: this relies on the activities table being in ascending numerical order with respect to the keys (which it should be unless the files at zipURL change), and this loop operation is also somewhat slow -- takes just under 2 minutes to process on my machine.

### 6. Create tidy dataset and write to file

The script in this section first converts the data extract to a molten data frame, then reshapes the data, casting the mean of each column value per activity per test subject.  Next, the column labels are updated to the set described in the CodeBook.md file, indicating that these are average values.  Finally, a new file called "tidySamsungData.txt" is written to the same "./data" directory created at the beginning of the script.

N.B. that when tidySamsungData.txt is read back in to R, the "activityCode" column will be converted to a factor (rather than character, as it was written), unless stringsAsFactors=FALSE is specified in read.table().
