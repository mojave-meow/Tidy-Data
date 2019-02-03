# load packages
library(dplyr)
library(reshape2)

# download and unzip data
fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL,destfile="Dataset.zip",mode="wb")
unzip(zipfile = "Dataset.zip")

# read data into R
xtest<-read.table("./UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("./UCI HAR Dataset/test/Y_test.txt")
subtest<-read.table("./UCI HAR Dataset/test/subject_test.txt")
xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain<-read.table("./UCI HAR Dataset/train/Y_train.txt")
subtrain<-read.table("./UCI HAR Dataset/train/subject_train.txt")
codes<-read.table("./UCI HAR Dataset/activity_labels.txt")
stats<-read.table("./UCI HAR Dataset/features.txt")

# label columns with descriptive variable names (step 4)
colnames(xtest)<-as.character(stats[,2])
colnames(xtrain)<-as.character(stats[,2])
names(ytest)<-c("label")
names(ytrain)<-c("label")
names(subtest)<-c("subject")
names(subtrain)<-c("subject")
names(codes)<-c("label","activity")

# provide descriptive activity names for activity labels (step 3)
ytest<-left_join(ytest,codes,by="label")
ytrain<-left_join(ytrain,codes,by="label")

# record test and train subjects
subtest$group<-"test"
subtrain$group<-"train"

# merge the corresponding train and test datasets
observations<-rbind(xtest,xtrain)
activity<-rbind(ytest,ytrain)
subjects<-rbind(subtest,subtrain)

# extract standard deviation and mean observations (step 2)
obs_extracted<-observations[,grep("std()|mean()",names(observations))]

# merge relevant data into one dataset (step 1)
dataset<-bind_cols(subjects,activity,obs_extracted)

# remove excess columns
prepdata<-dataset[-c(2,3)]

# reshape data and calculate the mean for each variable by subject and activity (step 5)
datamelt<-melt(prepdata,id=c("subject","activity"))
datacast<-dcast(datamelt,subject+activity~variable,mean)

# write .txt file for GitHub
write.table(datacast,file="tidydata.txt",row.names=FALSE)