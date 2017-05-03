##(1)check if "Samsung data" folder exists, if yes then choose it as workind directory, else it creates it
if (length(grep("(Samsung data)$",getwd()))==0) {
  dir.create("Samsung data")
}
setwd("Samsung data")



##(2) download the ZIP file to local workign directory, set the download date, and unzip it
zip_file_path<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zip_file_name<-"data.zip"
download.file(zip_file_path,zip_file_name)
datedownloaded<-date()
unzip(zip_file_name)
rm(zip_file_name);rm(zip_file_path)#remove unneeded Objs
file.remove("data.zip")#remove downloaded zip file after data extract


##(3) For traing and test datasets,
##read data set from X, activities codes from Y, and subject No. from Subject files.
train_path<-"./UCI HAR Dataset/train/"
x_train<-read.table(paste0(train_path,"x_train.txt"))
y_train<-read.table(paste0(train_path,"y_train.txt"))
subect_train<-read.table(paste0(train_path,"subject_train.txt"))
rm(train_path)#remove unneeded Objs

test_path<-"./UCI HAR Dataset/test/"
x_test<-read.table(paste0(test_path,"x_test.txt"))
y_test<-read.table(paste0(test_path,"y_test.txt"))
subect_test<-read.table(paste0(test_path,"subject_test.txt"))
rm(test_path)#remove unneeded Objs


##(4) merge both training and test data sets, then remove thier objects,
###### Requirement (1) Merges the training and the test sets to create one data set.######
X<-rbind(x_test, x_train)
Y<-rbind(y_test, y_train)
Subject<-rbind(subect_test, subect_train)
rm(x_test); rm(x_train);rm(y_test);rm(y_train);rm(subect_test);rm(subect_train)#remove unneeded Objs
######################################################################################


##(5) read features dataset to indetify mean and standard deviation for each measurement.
###### Requirement (2) Extracts only the measurements on the mean and ####################
###### standard deviation for each measurement.                   ####################
features<-read.table("UCI HAR Dataset/features.txt")
  ##select indices for mean and standard deviation
mean_std_ft<-grep("mean\\(\\)|std\\(\\)",features$V2)
  ##Then subsetting data in X by keeping only mean and standard deviation measurements columns
X<-X[,mean_std_ft]
######################################################################################


##(6) read activities codes/labels to substitute codes with labels in Y
###### Requirement (3)  Uses descriptive activity names to name the ######################
###### activities in the data set.                              ######################
activity<-read.table("UCI HAR Dataset/activity_labels.txt")
Y<-merge(Y,activity)
Y<-data.frame(Y[,2])
######################################################################################



##(7) Using names() function to change variable names for X, Y, subject datasets
###### Requirement (4) Appropriately labels the data set with .###########################
###### descriptive variable names.                         ###########################
names(X)<-features[mean_std_ft,2]
names(Subject)<-"subjectID"
names(Y)<-"activity"
rm(mean_std_ft)#remove unneeded Objs
######################################################################################


##(8) combine the three part of the dataset X,Y, and subject, then create a new tidy
## dataset in data.table formate to produce more calculation as requested
###### Requirement (5) From the data set in step 4, creates      #########################
###### a second, independent tidy data set with the average  #########################
###### of each variable for each activity and each subject . #########################
tidydata<-cbind(Subject, Y, X)
tidydata<-data.table(tidydata)
tidydata <- tidydata[, lapply(.sd, mean), by = 'subjectID,activity']
write.table(tidydata,"tidydata.txt",row.name=FALSE)
######################################################################################
setwd("..")# set the working directory back

