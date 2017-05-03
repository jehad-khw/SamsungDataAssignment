# R Script Description
The R code script goes into several steps of reading, combining, cleaning, and summerizing functions as follows:
### Step(1) Set working directory to "Samsung data" folder
If "Samsung data" folder doesn't exist then creats it. Then; set the working directory to "Samsung data"

### Step(2) Download and extract the data ZIP file
This step downloads the zip file from the link provided in the assignment, unzip its content, and then remove the original zip file with uneeded objects using in this step. Datetime stamp is saved for reference.

## Step(3) Read datasets in approperiate objects
Read the three data parts (X, Y, Subject) of the two datasets (Training and Testing) and assign each of then to seperate object.

## Step(4) Merge (Training and Testing) datasets
Merge each of data parts (X, Y, Subect) of the two datasets together. This step accomplishes <B>Requirement (1)</B>

## Step(5) Select reading for mean and std measurements
Read subset of features and filter X data frame for those features.This step accomplishes <B>Requirement (2)</B>

## Step(6) Replace activity codes with labels in Y
Read activities codes/labels to substitute codes with labels in Y. This step accomplishes <B>Requirement (3)</B>

## Step(7) Set meaningful names for variables
Using names() function to change variable names for X, Y, subject datasets to a more descriptive names.This step accomplishes <B>Requirement (4)</B>

## Step(8) Combine the three data parts X,Y, and subject
Combine the three data parts X,Y, and subject and then create a new tidy dataset using data.table class to produce more summerizing calculation. This step accomplishes <B>Requirement (5)</B>


# Codebook
## A
A is the
## B
B is the 
