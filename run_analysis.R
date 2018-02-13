

#### Download and Unzip Data ####
setwd("C:/Users/Desktop/Coursera/Getting and Cleaning Data") #change this to your working directory
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,'./UCI HAR Dataset.zip')
unzip("UCI HAR Dataset.zip", exdir = getwd())


#### Import Data ####
features <- read.table('./UCI HAR Dataset/features.txt')
features <- as.character(features[,2])

activity.labels <- read.table('./UCI HAR Dataset/activity_labels.txt')
names(activity.labels) <- c('activity', 'Activity_Name') #rename variables

train.x <- read.table('./UCI HAR Dataset/train/X_train.txt')
train.activity <- read.table('./UCI HAR Dataset/train/y_train.txt')
train.subject <- read.table('./UCI HAR Dataset/train/subject_train.txt')

train <- cbind(train.subject, train.activity, train.x) #merge data together
names(train) <- c(c('subject', 'activity'), features) #rename variables

test.x <- read.table('./UCI HAR Dataset/test/X_test.txt')
test.activity <- read.table('./UCI HAR Dataset/test/y_test.txt')
test.subject <- read.table('./UCI HAR Dataset/test/subject_test.txt')

test <-  cbind(test.subject, test.activity, test.x) #merge data together
names(test) <- c(c('subject', 'activity'), features) #rename variables


# --------------------------------------------------------------------#
#####------------- Begin Answering Project Questions -------------#####
# --------------------------------------------------------------------#


#### Q1. Merge Train and Test Data ####
full.data <- rbind(train,test)


#### Q2. Extract only Measurements on the Mean and Std Dev ####
mean.std.cols <- grep('(mean|std)\\(\\)', colnames(full.data)) #gives a list of columns with these criteria
subset.data <- full.data[,c(1,2,mean.std.cols)] #subsets to the above list of columns


#### Q3. Descriptive Activity Names in the Dataset ####
subset.data <- subset.data %>% left_join(activity.labels)


#### Q4. Appropriately Label Data with Descriptive Names ####
clean.data <- subset.data
data.labels <- names(clean.data)
data.labels <- gsub("[(][)]", "", data.labels)
data.labels <- gsub("^t", "Time_", data.labels)
data.labels <- gsub("^f", "Freq_", data.labels)
data.labels <- gsub("Acc", "_Accelerometer", data.labels)
data.labels <- gsub("Gyro", "_Gyroscope", data.labels)
data.labels <- gsub("BodyAcc", "Body", data.labels)
data.labels <- gsub("GravityAcc", "Gravity", data.labels)
data.labels <- gsub("Mag", "_Magnitude", data.labels)
data.labels <- gsub("-mean-", "_Mean_", data.labels)
data.labels <- gsub("-mean", "_Mean", data.labels)
data.labels <- gsub("-std-", "_StdDev_", data.labels)
data.labels <- gsub("-std", "_StdDev", data.labels)
data.labels <- gsub("BodyBody", "Body", data.labels)
data.labels <- gsub("Jerk", "_Jerk", data.labels)
data.labels <- gsub("-", "_", data.labels)
data.labels <- gsub("subject", "Subject", data.labels)
names(clean.data) <- data.labels


#### Q5. Create an Independent, Tidy Dataset with Average of Each Var, for Each Activity and Subject ####
avg.data <- clean.data %>%
              group_by(Subject, Activity_Name) %>%
              select(-activity) %>% 
              summarize_all(funs(mean))


#### Output Dataset to Working Directory ####
write.table(avg.data, "Tidy Data for Human Activity Recognition Using Smartphones.txt", sep="\t", row.names = FALSE)
