## Codebook
The Codebook was created on 16th April 2014 and describes the variables, 
the data, transformations or any work performed on the source data.

## Source Data
One of the most exciting areas in all of data science right now is wearable computing. 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced 
algorithms to attract new users. A full description is available at the site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The source data for this project was downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variables
The features selected for this database come from the accelerometer and gyroscope 3-axial 
raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove 
noise. Similarly, the acceleration signal was then separated into body and gravity 
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth 
filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to 
obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these 
three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, 
tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, 
fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are 
used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The dataset also contains subject ID and activity ID with their description as well.

The complete list of variables of each feature vector is available in 'features.txt' (part of
the downloded dataset from the URL given above) for the variables present in the source data and
merged.txt.

The following variables are present in tidy.txt. This dataset gives average of each variable 
(appended mean_ in the variables names described above) for each activity and each subject
- "ID"                              
- "activity"                                                      
- "mean_tBodyAcc.std...X"                                        
- "mean_tBodyAcc.std...Y"                               
- "mean_tBodyAcc.std...Z"                                              
- "mean_tGravityAcc.std...X"                              
- "mean_tGravityAcc.std...Y"                                           
- "mean_tGravityAcc.std...Z"                                           
- "mean_tBodyAccJerk.std...X"                              
- "mean_tBodyAccJerk.std...Y"                                          
- "mean_tBodyAccJerk.std...Z"                                          
- "mean_tBodyGyro.std...X"  
- "mean_tBodyGyro.std...Y"                                             
- "mean_tBodyGyro.std...Z"                                             
- "mean_tBodyGyroJerk.std...X"          
- "mean_tBodyGyroJerk.std...Y"                                         
- "mean_tBodyGyroJerk.std...Z"                                         
- "mean_tBodyAccMag.std.."              
- "mean_tGravityAccMag.std.."                                          
- "mean_tBodyAccJerkMag.std.."                                         
- "mean_tBodyGyroMag.std.."             
- "mean_tBodyGyroJerkMag.std.."                                        
- "mean_fBodyAcc.std...X"                                              
- "mean_fBodyAcc.std...Y"               
- "mean_fBodyAcc.std...Z"                                              
- "mean_fBodyAccJerk.std...X"                                          
- "mean_fBodyAccJerk.std...Y"           
- "mean_fBodyAccJerk.std...Z"                                          
- "mean_fBodyGyro.std...X"                                             
- "mean_fBodyGyro.std...Y"              
- "mean_fBodyGyro.std...Z"                                            
- "mean_fBodyAccMag.std.."                                             
- "mean_fBodyBodyAccJerkMag.std.."      
- "mean_fBodyBodyGyroMag.std.."                                       
- "mean_fBodyBodyGyroJerkMag.std.."                                   
- "mean_tBodyAcc.mean...X"              
- "mean_tBodyAcc.mean...Y"                                            
- "mean_tBodyAcc.mean...Z"                                             
- "mean_tGravityAcc.mean...X"           
- "mean_tGravityAcc.mean...Y"                                         
- "mean_tGravityAcc.mean...Z"                                          
- "mean_tBodyAccJerk.mean...X"          
- "mean_tBodyAccJerk.mean...Y"                                        
- "mean_tBodyAccJerk.mean...Z"                                        
- "mean_tBodyGyro.mean...X"             
- "mean_tBodyGyro.mean...Y"                                           
- "mean_tBodyGyro.mean...Z"                                            
- "mean_tBodyGyroJerk.mean...X"         
- "mean_tBodyGyroJerk.mean...Y"                                       
- "mean_tBodyGyroJerk.mean...Z"                                        
- "mean_tBodyAccMag.mean.."             
- "mean_tGravityAccMag.mean.."                                         
- "mean_tBodyAccJerkMag.mean.."                                        
- "mean_tBodyGyroMag.mean.."            
- "mean_tBodyGyroJerkMag.mean.."                                      
- "mean_fBodyAcc.mean...X"                                             
- "mean_fBodyAcc.mean...Y"              
- "mean_fBodyAcc.mean...Z"                                            
- "mean_fBodyAcc.meanFreq...X"                                        
- "mean_fBodyAcc.meanFreq...Y"          
- "mean_fBodyAcc.meanFreq...Z"                                        
- "mean_fBodyAccJerk.mean...X"                                         
- "mean_fBodyAccJerk.mean...Y"          
- "mean_fBodyAccJerk.mean...Z"                                        
- "mean_fBodyAccJerk.meanFreq...X"                                     
- "mean_fBodyAccJerk.meanFreq...Y"      
- "mean_fBodyAccJerk.meanFreq...Z"                                    
- "mean_fBodyGyro.mean...X"                                            
- "mean_fBodyGyro.mean...Y"             
- "mean_fBodyGyro.mean...Z"                                           
- "mean_fBodyGyro.meanFreq...X"                                        
- "mean_fBodyGyro.meanFreq...Y"         
- "mean_fBodyGyro.meanFreq...Z"                                       
- "mean_fBodyAccMag.mean.."                                            
- "mean_fBodyAccMag.meanFreq.."         
- "mean_fBodyBodyAccJerkMag.mean.."                                   
- "mean_fBodyBodyAccJerkMag.meanFreq.."                                
- "mean_fBodyBodyGyroMag.mean.."        
- "mean_fBodyBodyGyroMag.meanFreq.."                                  
- "mean_fBodyBodyGyroJerkMag.mean.."                                   
- "mean_fBodyBodyGyroJerkMag.meanFreq.."

## Transformations performed to cleanup the data
R script called run_analysis.R that does the following.
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive activity names. 
- Creates a second, independent tidy data set with the average of each variable for each 
activity and each subject. 

Once the source dataset is downloaded, the training and test sets along with the activity_labels 
and feature names were loaded into R. Now they were combined to give us the merged.txt which
contained 10299 observations and 563 columns. We labeled the dataset here only to carry forward the
appropriate column names in future transformations. Now this merged.txt is saved in the working directory.

Now we extracted fetures which contained either mean or standard deviations which were 79 in total.
Since the dataset also contained subject id and activity id we got a dataset with 10299 observations
and 81 columns.

Finally, we replaced activity ids with their descriptive activity namesUsing descriptive activity names.
We also convered the subject id to a factor for future transformations.

Now we have an option to to store this tidy dataset with the mean and standard deviation variables 
as well as the subject id and the activity in our working directoy as "tidy_std_mean.txt". 

Finally, an independent tidy data set with the average of each variable for each activity and each 
subject was created and stored into the working directoy as "tidy.txt", This dataframe contains 
still 81 columns but since it contains the average of each variable for each activity and each 
subject and there were 6 activities and 30 subjects, number of rows were reduced to 180.

