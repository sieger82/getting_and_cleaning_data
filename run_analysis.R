# this script reads the raw UCI HAR data packes and creates one single clean data set
# NB: needs the file: getdata-projectfiles-UCI HAR Dataset.zip in the current working directory

# unzip the raw data package
unzip("getdata-projectfiles-UCI HAR Dataset.zip")

# read the features variable names into a data frame
features <- read.table("UCI HAR Dataset//features.txt")

# read the training data into a data frame using column names from features data frame
Xdata <- read.table("UCI HAR Dataset//train//X_train.txt", col.names=features[,2])
# append the test data 
Xdata <- rbind(Xdata, read.table("UCI HAR Dataset//test//X_test.txt", col.names=features[,2]))

# read activity labels into a data frame
activities <- read.table("UCI HAR Dataset//activity_labels.txt", col.names=c("ID", "Description"))

# read the activity data of the training set info data frame
Ydata <- read.table("UCI HAR Dataset//train//y_train.txt", col.names="Activity")
# append the test data
Ydata <- rbind(Ydata, read.table("UCI HAR Dataset//test//y_test.txt", col.names="Activity"))

# merge the activity data with the activity labels so we can use descriptive factors
Ydata <- merge(Ydata, activities, by.x="Activity", by.y="ID")

# read the subject id's for the training data set into a data frame
subjectData <- read.table("UCI HAR Dataset//train//subject_train.txt", col.names="Subject.ID")

# append the test data
subjectData <- rbind(subjectData, read.table("UCI HAR Dataset//test//subject_test.txt", 
                                             col.names="Subject.ID"))

# add everything into a single data frame
# include only mean() and std() measurements
cleanDataSet <- Xdata[grep("mean\\.\\.|std\\.\\.", colnames(Xdata), perl=TRUE)]
# add subject IDs and activity factors as first 2 columns in the dataset
cleanDataSet <- cbind(Subject.ID = subjectData$Subject.ID, 
                      Activity = Ydata$Description, 
                      cleanDataSet) 
# clean the column names a bit (remove .. and ...)
names(cleanDataSet) <- sub("\\.\\.|\\.\\.\\.", ".", names(cleanDataSet))

# convert the Subject.ID to factors
cleanDataSet$Subject.ID <- factor(cleanDataSet$Subject.ID)

# write the tidy dataset to a file on disk
write.table(cleanDataSet, "tidy_UCI_HAR_Dataset.txt", row.name=FALSE)
