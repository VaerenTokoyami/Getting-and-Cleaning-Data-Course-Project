# File Description: This file will complete all tasks necessary to complete cleaning and tidying of data as required for project. See README.md and CodeBook for additional details.

###########################
# Step 1 - Load the acquire_project_data.R file

source("acquire_project_data.R")

# Step 2 - Merge the Training and Test Data sets to create a unified data set

## Step 2.1 - Concatenate individual data tables to form a single data table

sensor_data <- rbind(
  cbind(training_subjects, training_data, training_activity),
  cbind(test_subjects, test_data, test_activity)
)

## Step 2.2 - Assign Column Names from activity_labels file

colnames(sensor_data) <- c("subject", features[,2], "activity")

## Step 2.3 - Remove original data tables from memory (if needed later than can re-load acquire_project_data.R)
rm(training_subjects, training_data, training_activity, test_subjects, test_data, test_activity)

# Step 3 - Extract only the measurements on the mean and standard deviation for each measurement

## Step 3.1 - Assign which Columns of the combined dataset will be kept based upon this extraction

desired_sensor_data <- grepl("subject|activity|mean|std", colnames(sensor_data))

## Step 3.2 - Establish these assigned columns will be the only ones kept & extract

sensor_data <- sensor_data[,desired_sensor_data]

# Step 4 - Assigns the Descriptive Activity Names as Labels for the Activities in the Dataset

## Step 4.1 - Replaces the activity numeric values with the descriptive values from the activity labels table
### Using the factor function for the ease of use to encode a vector as a factor (essentially the lvels and labels arguments are shortcuts to map this type of cross-referencing)

sensor_data$activity <- factor(sensor_data$activity, levels= activity_labels[,1], labels = activity_labels[,2])

# Step 5 - Appropriately Label the Dataset with Descriptive Variable Names

## Step 5.1 - Pull just the Variable Names from the Dataset (The variables)

sensor_data_col_labels <- colnames(sensor_data)

## Step 5.2 - Remove Special Characters

sensor_data_col_labels <- gsub("[\\(\\)-]", "", sensor_data_col_labels)

## Step 5.3 - Expand Abbreviations and Clean-up Labels

sensor_data_col_labels <- gsub("^f", "frequencyDomain_", sensor_data_col_labels)
sensor_data_col_labels <- gsub("^t", "timeDomain_", sensor_data_col_labels)
sensor_data_col_labels <- gsub("([Bb]ody[Bb]ody)", "Body", sensor_data_col_labels)
sensor_data_col_labels <- gsub("([Bb]ody)", "Body_", sensor_data_col_labels)
sensor_data_col_labels <- gsub("Gravity", "Gravity_", sensor_data_col_labels)
sensor_data_col_labels <- gsub("Acc", "Accelerometer_", sensor_data_col_labels)
sensor_data_col_labels <- gsub("Gyro", "Gyroscope_", sensor_data_col_labels)
sensor_data_col_labels <- gsub("Jerk", "Jerk_", sensor_data_col_labels)
sensor_data_col_labels <- gsub("Mag", "Magnitude_", sensor_data_col_labels)
sensor_data_col_labels <- gsub("Freq", "Frequency_", sensor_data_col_labels)
sensor_data_col_labels <- gsub("mean", "Mean_", sensor_data_col_labels)
sensor_data_col_labels <- gsub("std", "standardDeviation_", sensor_data_col_labels)
sensor_data_col_labels <- gsub("_$", "", sensor_data_col_labels)

## Step 5.4 - Assign new column labels to dataset

colnames(sensor_data) <- sensor_data_col_labels

# Step 6 - Creates a new, independant tidy Dataset with the average of each variable for each activity and each subject

## Step 6.1 - Groups the dataset by subject and activity, then summarizes using mean

sensor_data_organized <- sensor_data %>% 
  group_by(subject, activity) %>%
  summarise_each(mean)

## Step 6.2 - Outputs the new dataset to file "tidy_data_set_submission.txt"

write.table(sensor_data_organized, "tidy_data_set_submission.txt", row.names = FALSE, quote = FALSE)

## END