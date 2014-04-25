## This document explains how the run_analysis.R script functions

### The script is divided into XXXX named sections, as follows:
* 1. Getting the data
* 2. Extract zip archive
*
*
*
*
*etc.

### 1. Getting the data
The script in this section sets zipURL to the URL of the zip file containing the data.
Two different download scripts are included (one each for Windows/Mac, to handle the https address)
dateDownloaded records the date of download, in case the linked zip file is altered on the backend

### 2. Extract zip archive

This part of the script simply unzips the contents of downloaded file to the same ./data directory for processing in subsequent sections


### 3.  