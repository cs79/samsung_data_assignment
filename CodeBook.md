## Code Book for run_analysis.R script and output

### Overview and Notes on Summary Choices

This document describes the data obtained and processed by the run_analysis.R script.  These data come from the Human Activity Recognition Using Smartphones Dataset, Version 1.0, collected by researchers Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto at the SmartLab affiliated with Università degli Studi di Genova.

The raw data are processed signals from accelerometer and gyroscope readings taken from subjects' Samsung Galaxy S2 smartphones, worn on the waist during six physical activities.

The tidy data are average values of 66 summary statistics from the raw dataset, reported as observations of each of those averages per activity per subject.  The summary statistics in the raw data set which are processed by the run_analysis.R script are those that appear to register a mean or standard deviation of a direct signal recording from the accelerometer or gyroscope worn by a test subject, excluding mean frequencies.  If mean frequencies are desired in the tidy dataset, instructions are included in the README.md file to accomplish this.


### Study Design

From the README.txt included with the original data:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


### Code Book

The following variable names are the feature vector of the tidy dataset; for descriptions of features in the raw dataset, please refer to the original researchers' features_info.txt file included in the zip of raw data.

#### Identifying variables
subjectID
        Numerical Code for subjects per the raw dataset.
        
        Values:
        1-30; while numeric, they do not indicate ordinality

activityCode
        Activities performed by the experimental subjects.  Activity values indicate the activity performed.

        Values:
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING

#### Time domain variables
AveragetBodyAccmeanX
AveragetBodyAccmeanY
AveragetBodyAccmeanZ
        Average of average time domain signals for body acceleration in three dimensional axes (x, y, and z suffixes).
        
        Values:
        Normalized and bounded within [-1,1]

AveragetBodyAccstdX
AveragetBodyAccstdY
AveragetBodyAccstdZ
        Average of standard deviations of time domain signals for body acceleration in three dimensional axes (x, y, and z suffixes).
        
        Values:
        Normalized and bounded within [-1,1]

AveragetGravityAccmeanX
AveragetGravityAccmeanY
AveragetGravityAccmeanZ
        Average of average time domain signals for gravity acceleration in three dimensional axes (x, y, and z suffixes).
        
        Values:
        Normalized and bounded within [-1,1]

AveragetGravityAccstdX
AveragetGravityAccstdY
AveragetGravityAccstdZ
        Average of standard deviations of time domain signals for body acceleration in three dimensional axes (x, y, and z suffixes).
        
        Values:
        Normalized and bounded within [-1,1]

AveragetBodyAccJerkmeanX
AveragetBodyAccJerkmeanY
AveragetBodyAccJerkmeanZ
        Average of average of time domain signals for body jerk in three dimensional axes (x, y, and z suffixes).
        
        Values:
        Normalized and bounded within [-1,1]

AveragetBodyAccJerkstdX
AveragetBodyAccJerkstdY
AveragetBodyAccJerkstdZ
        Average of standard deviations of time domain signals for body jerk in three dimensional axes (x, y, and z suffixes).
        
        Values:
        Normalized and bounded within [-1,1]
        
AveragetBodyGyromeanX
AveragetBodyGyromeanY
AveragetBodyGyromeanZ
        Average of average of time domain signals for gyroscope readings in three dimensional axes (x, y, and z suffixes).
        
        Values:
        Normalized and bounded within [-1,1]

AveragetBodyGyrostdX
AveragetBodyGyrostdY
AveragetBodyGyrostdZ
        Average of standard deviations of time domain signals for gyroscope readings in three dimensional axes (x, y, and z suffixes).
        
        Values:
        Normalized and bounded within [-1,1]

AveragetBodyGyroJerkmeanX
AveragetBodyGyroJerkmeanY
AveragetBodyGyroJerkmeanZ
        Average of average of time domain signals for gyroscope jerk readings in three dimensional axes (x, y, and z suffixes).
        
        Values:
        Normalized and bounded within [-1,1]
        
AveragetBodyGyroJerkstdX
AveragetBodyGyroJerkstdY
AveragetBodyGyroJerkstdZ
        Average of standard deviation of time domain signals for gyroscope jerk readings in three dimensional axes (x, y, and z suffixes).
        
        Values:
        Normalized and bounded within [-1,1]
        
AveragetBodyAccMagmean
AveragetBodyAccMagstd
AveragetGravityAccMagmean
AveragetGravityAccMagstd
AveragetBodyAccJerkMagmean
AveragetBodyAccJerkMagstd
AveragetBodyGyroMagmean
AveragetBodyGyroMagstd
AveragetBodyGyroJerkMagmean
AveragetBodyGyroJerkMagstd


#### Fourier-transformed readings
AveragefBodyAccmeanX
AveragefBodyAccmeanY
AveragefBodyAccmeanZ

AveragefBodyAccstdX
AveragefBodyAccstdY
AveragefBodyAccstdZ

AveragefBodyAccJerkmeanX
AveragefBodyAccJerkmeanY
AveragefBodyAccJerkmeanZ

AveragefBodyAccJerkstdX
AveragefBodyAccJerkstdY
AveragefBodyAccJerkstdZ

AveragefBodyGyromeanX
AveragefBodyGyromeanY
AveragefBodyGyromeanZ

AveragefBodyGyrostdX
AveragefBodyGyrostdY
AveragefBodyGyrostdZ

AveragefBodyAccMagmean
AveragefBodyAccMagstd
AveragefBodyBodyAccJerkMagmean
AveragefBodyBodyAccJerkMagstd
AveragefBodyBodyGyroMagmean
AveragefBodyBodyGyroMagstd
AveragefBodyBodyGyroJerkMagmean
AveragefBodyBodyGyroJerkMagstd
