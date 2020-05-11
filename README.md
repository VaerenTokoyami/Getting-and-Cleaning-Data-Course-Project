# Getting and Cleaning Data Course Project Description
This is my Submission for the End of Course Project for the Coursera/JHU Data Science Specialization Course "Getting and Cleaning Data". This README is organized into multiple sections, to include the project & submission prompts, my README  explanations for the files contained in this REPO, and how each of the scripts function.

## Project Prompt:
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
Review criteria

1.    The submitted data set is tidy.
2.    The Github repo contains the required scripts.
3.    GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4.    The README that explains the analysis files is clear and understandable.
5.  The work submitted for this project is the work of the student who submitted it.

Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names.
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!

## Prompt for My Submission:
Project Title *

Please upload the tidy data set created in step 5 of the instructions. Please upload your data set as a txt file created with write.table() using row.name=FALSE (do not cut and paste a dataset directly into the text box, as this may cause errors saving your submission).

Please submit a link to a Github repo with the code for performing your analysis. The code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in your working directory. The output should be the tidy data set you submitted for part 1. You should include a README.md in the repo describing how the script works and the code book describing the variables.


## README Explanation:
For my submission, I relied upon the original dataset directly from University of California Irvine- url: http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip

This data set is organized into the following documents and scripts:
* This README
* A CodeBook file for additional details
* A Notes file to get a better understanding of how I worked through the project prompt and completed this project
* A license file crediting the project creators
* R Script: acquire_project_data.R which downloads and loads the datasets for use in this project
* R Script: run_analysis.R which cleans and tidy's the dataset as prescribed in the project prompt
* A new dataset table stored in .txt format: "tidy_data_set_submission.txt" - this is the resulting tidy dataset from this project.

This project was completed April-May 2020 using RStudio Version 1.2.5001 running R version 3.6.1 (2019-07-05) with the dplyr package version 0.8.3.
