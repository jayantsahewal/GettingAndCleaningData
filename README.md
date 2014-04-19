# Getting And Cleaning Data
This repo contains the peer assignment for the course Getting and Cleaning Data on Coursera.

### Files
--------
This repo contains the following files:

##### README.md:
  This file contains all the required information about this repository.
  * Author: Jayant Sahewal
  * Date: Apr-19-2014

##### run_analysis.R:
  This script was created and tested using R Studio v0.98.501 on MacBook Air 2012 model running on OS X v10.9.2 with i7   processor and 8 GB RAM. The R script to do the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##### codebook.md
  the description of resulting datasets, variables, transformations etc.

### Reproduce tidy datasets

To reproduce the tidy datasets, please do the following:

1. Download the zipped file in your working directory from the following URL.                               https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A full description of the source data can be found at the site below:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

2. Run run_anlaysis.R in your working directory where you downloded data
