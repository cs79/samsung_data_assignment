## This document explains how the run_analysis.R script functions

### The script is divided into XXXX numbered sections, as follows:
* 1. Getting the data
* 2. Extract zip archive
* 3. Read in data and labels; merge sets
* 4. etc.
* 5.
* 6.
* etc.

### 1. Getting the data
The script in this section sets zipURL to the URL of the zip file containing the data.
Two different download scripts are included (one each for Windows/Mac, to handle the https address)
dateDownloaded records the date of download, in case the linked zip file is altered on the backend

### 2. Extract zip archive
This part of the script simply unzips the contents of downloaded file to the same ./data directory for processing in subsequent sections

### 3. Read in data and labels; merge sets
This part of the script reads in 6 lists: the test and training sets, the activity levels for each of the test and training sets, the labels for the feature vectors (i.e. column names), and the activity code lookup (for later use).

After reading in these lists, the script applies the column names to both the xtest and xtrain sets, adds an extra column "activityCode" to each of the test and training sets with the appropriate values from ytest and ytrain, respectively, then combines the sets which now share 562 common columns

### 4. 



