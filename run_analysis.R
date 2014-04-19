# Copy this script to your working directory.

# run_analysis.R script
# Peer Assessments: Getting and Cleaning Data Project
# You should create one R script called run_analysis.R that does the following. 
#    1. Merges the training and the test sets to create one data set.
#    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#    3. Uses descriptive activity names to name the activities in the data set
#    4. Appropriately labels the data set with descriptive activity names. 
#    5. Creates a second, independent tidy data set with the average of each variable 
#       for each activity and each subject.

# As per the instructions, I am assuming that 2 datasets need to be created since instruction 1 and 5 are
# the only instruction which explicitly use the word "create" to create datasets.
#    1. Merged dataset as per the instruction 1 which we will call "merged.txt".
#    2. finaly tidy dataset as per the instruction 5 which we will call "tidy.txt"
# I have kept the same formatting as per the provided input files. If any other format is required, please
# make changes in the argument sep = "" accordingly.
# If dataset with just mean and standard deviation for each measurement, then please use R object
# data_merged_ex to extract the dataset. I will provide more instructions in between the code to do so.

# Before running the script please make sure that you have read README.cmd and downloaded the dataset 
# in your working directory as per the instructions. Please do not rename the file. 

# If you are not sure on how to download the dataset or haven't read README.cmd then uncomment the next 2 lines
# to download the data in your working directory. Size of this zipped file is around 62.6 MB. So it may take a
# while depending upon you speed of your internet connection.

# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
#              destfile = "getdata_projectfiles_UCI HAR Dataset.zip", method = "curl")

# Now lets start working by setting locations for the required data files
loc_zipfile             <- "getdata_projectfiles_UCI HAR Dataset.zip"
loc_activity_labels     <- "UCI HAR Dataset/activity_labels.txt"
loc_features            <- "UCI HAR Dataset/features.txt"
loc_x_train             <- "UCI HAR Dataset/train/X_train.txt"
loc_y_train             <- "UCI HAR Dataset/train/y_train.txt"
loc_subject_train       <- "UCI HAR Dataset/train/subject_train.txt"
loc_x_test              <- "UCI HAR Dataset/test/X_test.txt"
loc_y_test              <- "UCI HAR Dataset/test/y_test.txt"
loc_subject_test        <- "UCI HAR Dataset/test/subject_test.txt"

# Now we will load the above mentioned files in corresponding R objects
activity_labels        	<- read.table(unz(loc_zipfile, loc_activity_labels), sep="", stringsAsFactors=FALSE, 
                                      col.names = c("activityid", "activity"), colClasses = c("character", "character"))
features                <- read.table(unz(loc_zipfile, loc_features), sep="", stringsAsFactors=FALSE, 
                                      col.names =c("featureid", "featurename"), colClasses = c("character", "character"))
x_train                 <- read.table(unz(loc_zipfile, loc_x_train), sep="")
y_train                 <- read.table(unz(loc_zipfile, loc_y_train), sep="", col.names = "activityid")
subject_train           <- read.table(unz(loc_zipfile, loc_subject_train), sep="", col.names="subjectid")
x_test                  <- read.table(unz(loc_zipfile, loc_x_test), sep="")
y_test                  <- read.table(unz(loc_zipfile, loc_y_test), sep="", col.names = "activityid")
subject_test            <- read.table(unz(loc_zipfile, loc_subject_test), sep="", col.names="subjectid")

# Now we will set column names for x_train and x_test using features.
names(x_train)          <- features$featurename
names(x_test)           <- features$featurename

# Now we will merge the training and the test sets to create one data set as per the instruction No. 1
data_train              <- cbind(subject_train, y_train, x_train)
data_test               <- cbind(subject_test, y_test, x_test)
data_merged             <- rbind(data_train, data_test)

# Now, we will make the column names in lowercase characters to properly label the dataset
names(data_merged) <- tolower(names(data_merged))

# Now we will write this dataset to a csv file "merged.csv" in our working directory
write.table(data_merged, "merged.txt", sep = "", row.names=FALSE)

# Now we wll extract only the measurements on the mean and standard deviation for each measurement as per
# the instruction No. 2
std_mean_index <- c(grep("mean()", names(data_merged)), grep("std()", names(data_merged)))
data_merged_ex <- data_merged[,sort(c(1,2, std_mean_index))]

# Now we will use descriptive activity names to name the activities in the data set and 
# label the data set appropriately with descriptive activity names as per the instructions No. 3 and 4
data_merged_ex$activityid <- factor(data_merged_ex$activityid, levels=activity_labels$activityid, 
                                     labels=activity_labels$activity)
data_merged_ex$subjectid <- as.factor(data_merged_ex$subjectid)

# Now we will change the name of column no.2 to "activity" since now it contains the descritive activity name
# rather than the activity id.
names(data_merged_ex)[2] <- "activity"

# As I mentioned in the begining that I have extracted datasets for instruction No. 1 and 5. 
# If dataset with ean and standard deviation for each measurement then please uncomment the line below to
# extract the dataset
# write.table(data_merged_ex, "tidy_std_mean.txt", sep = "", row.names=FALSE)

# Now we will create a second, independent tidy data set with the average of each variable for each activity 
# and each subject as per the instruction No. 5
data_merged_ex1 <- aggregate(data_merged_ex[, -c(1:2)], by=list(subjectid=data_merged_ex$subjectid, 
                                                               activity=data_merged_ex$activity), mean)

# Now we will add mean_ in front of each column except 1 and 2 to show that now these contain mean for each
# variable for each activity and each subject.
colnames(data_merged_ex1)[-c(1:2)] <- paste("mean_", sep = "", colnames(data_merged_ex1)[-c(1:2)]) 

# Now finally, we will write this dataset to a csv file "tidy.csv" in our working directory
write.table(data_merged_ex1, "tidy.txt", sep = "", row.names=FALSE)