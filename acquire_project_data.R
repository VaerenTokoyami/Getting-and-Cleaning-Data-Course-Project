# File Description: This file will complete all tasks necessary to download and load
# the dataset for this project. See README.md and CodeBook for additional details.

###########################
# Step 1 - Load the DPLYR package into R

library(dplyr)

# Step 2 - Get the Data

## Step 2.1 - Assign the source URL and file name for the origin dataset

origin_data_url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip"
origin_data_file <- "UCI HAR Dataset.zip"

## Step 2.2 - Download the zipped data file if it hasn't already been downloaded
### ?download.file specifies that mode options are "w", "wb" (binary), "a" (append) and "ab". Not used for methods "wget" and "curl"- details section also highlights why you'd want to use download.file over wget or curl methods

if(!file.exists(origin_data_file)) {
  download.file(origin_data_url,origin_data_file, mode="wb")
}

## Step 2.3 - Unzip the zipped origin data file

origin_data_folder_path <- "UCI HAR Dataset"
if(!file.exists(origin_data_folder_path)){
  unzip(origin_data_file)
}

# Step 3 - Read/Load the Data

## Step 3.1 - Load the Training Data

training_subjects <- read.table(file.path(origin_data_folder_path, "train", "subject_train.txt"))
training_x_values <- read.table(file.path(origin_data_folder_path, "train", "X_train.txt"))
training_y_values <- read.table(file.path(origin_data_folder_path, "train", "y_train.txt"))

## Step 3.2 - Load the Test Data

test_subjects <- read.table(file.path(origin_data_folder_path, "test", "subject_test.txt"))
test_x_values <- read.table(file.path(origin_data_folder_path, "test", "X_test.txt"))
test_y_values <- read.table(file.path(origin_data_folder_path, "test", "y_test.txt"))

## Step 3.3 - Load the Features
### Since feature names or not unique, need to specify to import as is in order to not eliminate load of deduplication

features <- read.table(file.path(origin_data_folder_path, "features.txt"), as.is = TRUE)

## Step 3.4 - Load the Activity Labels

activities <- read.table(file.path(origin_data_folder_path, "activity_labels.txt"))
colnames(activities) <- c("activity_id","activity_label")