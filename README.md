# R Script Description
The R code script goes into several steps of reading, combining, cleaning, and summerizing functions as follows:
### Step(1) Set working directory to "Samsung data" folder
If "Samsung data" folder doesn't exist then creats it. Then; set the working directory to "Samsung data"

### Step(2) Download and extract the data ZIP file
This step downloads the zip file from the link provided in the assignment, unzip its content, and then remove the original zip file with uneeded objects using in this step. Datetime stamp is saved for reference.

### Step(3) Read datasets in approperiate objects
Read the three data parts (X, Y, Subject) of the two datasets (Training and Testing) and assign each of then to seperate object.

### Step(4) Merge (Training and Testing) datasets
Merge each of data parts (X, Y, Subject) of the two datasets together. This step accomplishes <B>Requirement (1)</B>

### Step(5) Select reading for mean and std measurements
Read subset of features and filter X data frame for those features (or measurements).This step accomplishes <B>Requirement (2)</B>

### Step(6) Replace activity codes with labels in Y
Read activities codes/labels to substitute codes with labels in Y. This step accomplishes <B>Requirement (3)</B>

### Step(7) Set meaningful names for variables
Using names() function to change variable names for X, Y, subject datasets to a more descriptive names.This step accomplishes <B>Requirement (4)</B>

### Step(8) Combine the three data parts X,Y, and subject
Combine the three data parts X,Y, and subject and then create a new tidy dataset using data.table class to produce more summerizing calculation. This step accomplishes <B>Requirement (5)</B>


# Codebook
## subjectID
It is a numerical identifier of the subject who carried out the experiment.
## activity
Physical activities exercised while measurements were collected. Activities are:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

## variables summaries
X dataset contains readings obtained as measurements from the experiment. Requirement (5) stated that only mean() and std() measurements need to be included in the final tidy dataset. The final tidy dataset then summerizes those measurements by calculating the mean for each (Subject..Activity) group.
The following are a list of measurements were selected:
"3" "tBodyAcc-mean()-X"
"4" "tBodyAcc-mean()-Y"
"5" "tBodyAcc-mean()-Z"
"6" "tBodyAcc-std()-X"
"7" "tBodyAcc-std()-Y"
"8" "tBodyAcc-std()-Z"
"9" "tGravityAcc-mean()-X"
"10" "tGravityAcc-mean()-Y"
"11" "tGravityAcc-mean()-Z"
"12" "tGravityAcc-std()-X"
"13" "tGravityAcc-std()-Y"
"14" "tGravityAcc-std()-Z"
"15" "tBodyAccJerk-mean()-X"
"16" "tBodyAccJerk-mean()-Y"
"17" "tBodyAccJerk-mean()-Z"
"18" "tBodyAccJerk-std()-X"
"19" "tBodyAccJerk-std()-Y"
"20" "tBodyAccJerk-std()-Z"
"21" "tBodyGyro-mean()-X"
"22" "tBodyGyro-mean()-Y"
"23" "tBodyGyro-mean()-Z"
"24" "tBodyGyro-std()-X"
"25" "tBodyGyro-std()-Y"
"26" "tBodyGyro-std()-Z"
"27" "tBodyGyroJerk-mean()-X"
"28" "tBodyGyroJerk-mean()-Y"
"29" "tBodyGyroJerk-mean()-Z"
"30" "tBodyGyroJerk-std()-X"
"31" "tBodyGyroJerk-std()-Y"
"32" "tBodyGyroJerk-std()-Z"
"33" "tBodyAccMag-mean()"
"34" "tBodyAccMag-std()"
"35" "tGravityAccMag-mean()"
"36" "tGravityAccMag-std()"
"37" "tBodyAccJerkMag-mean()"
"38" "tBodyAccJerkMag-std()"
"39" "tBodyGyroMag-mean()"
"40" "tBodyGyroMag-std()"
"41" "tBodyGyroJerkMag-mean()"
"42" "tBodyGyroJerkMag-std()"
"43" "fBodyAcc-mean()-X"
"44" "fBodyAcc-mean()-Y"
"45" "fBodyAcc-mean()-Z"
"46" "fBodyAcc-std()-X"
"47" "fBodyAcc-std()-Y"
"48" "fBodyAcc-std()-Z"
"49" "fBodyAccJerk-mean()-X"
"50" "fBodyAccJerk-mean()-Y"
"51" "fBodyAccJerk-mean()-Z"
"52" "fBodyAccJerk-std()-X"
"53" "fBodyAccJerk-std()-Y"
"54" "fBodyAccJerk-std()-Z"
"55" "fBodyGyro-mean()-X"
"56" "fBodyGyro-mean()-Y"
"57" "fBodyGyro-mean()-Z"
"58" "fBodyGyro-std()-X"
"59" "fBodyGyro-std()-Y"
"60" "fBodyGyro-std()-Z"
"61" "fBodyAccMag-mean()"
"62" "fBodyAccMag-std()"
"63" "fBodyBodyAccJerkMag-mean()"
"64" "fBodyBodyAccJerkMag-std()"
"65" "fBodyBodyGyroMag-mean()"
"66" "fBodyBodyGyroMag-std()"
"67" "fBodyBodyGyroJerkMag-mean()"
"68" "fBodyBodyGyroJerkMag-std()"
