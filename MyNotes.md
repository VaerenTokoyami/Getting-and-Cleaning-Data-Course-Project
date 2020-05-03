# My Process:
I wanted to document my process for completing this project as due to family issues followed by the COVID-19 lockdown, I am finally revisiting this course after a 3 month hiatus. While I've rewatched the course videos today, and much of this course's content appears simple enough, both the first time I read the assignment prompt 3 months ago, and now to attempt completion- the project appears daunting. Not necessarily from a technical standpoint, but from an assignment description standpoint. This is probably the singlemost frustrating aspect of online learning for me: some classes are awesome, with great video instruction, great assignment prompts, and great projects with simple explanations (I've had courses that met all of this criteria yet were technically incredibly challenging- they were just great courses which when worked through and troubleshot well, led to epic learning)- I hope this is one of those, but from my experience thus far, I feel this project will sadly rely more upon looking at expected outcomes and backwards solving how to actually create the expected outcomes...

Enough ranting for now- let's get to work!

# What does this Project actually want me to do?
1) Demonstrate my ability to:
    A) Collect Data
    B) Work With Data 
    C) Clean Data
  .... Okay, I know I said ranting over, but really- how is working with and cleaning data different? Yes, knowing how to display and play with data is different than publishing a final view- but seriously, this is the definition of CLEANING data... its not a 2 part process- each data set is different and has varying amounts of cleaning needed...

... okay, back on track...

2) GOAL: Prepare tidy data for use in later analysis... okay, I'm traying to stay on track, but most brainstorming for later analysis is done in my experience during the cleaning process- alternatively, if you only recieve clean data, then how do you familiarize yourself with your data (or maybe you should just look at those pretty charts and graphs instead!)?

3) Grading will be a series of yes/no questions related to the project... okay- well if you're reading this, then hopefully I'll have already convinced you to give me more yes answers than no answers :)

4) Submission will be :
    A) A Tidy data set
    B) A link to this GitHub REPO with the script for performing the analysis
    C) A CodeBook named 'CodeBook.md' that describes the variables, data, any transformations or 'work' performed to clean up the data
    D) A 'README.md' file in the REPO with the scripts- how all the scripts work and how they are connected
  
## Okay - But that's only the expected tangible outcomes for the project .... What is the project though?
Okay, now we finally get to what should have been the project title- Accelerometer Data Cleaning

## Yay- Finally a 'WHAT': We're organizing accelerometer output data!
More specifically we get a link to the University of California Irvine's Machine Learning Repository for 'Human Activity Recognition Using Smartphones Data Set' for the explanation.... and rather than the more reliable link to the dataset- some random cloudfront link.... I'll go with the UCI data for security reasons... so if my results are off, then at least I'm staying true to the dataset we're assigned to exploit.

## Wait! A hidden requirement- I think I was correct all along that this assignment is horribly written!
5) I should create a single R script, 'run_analysis.R' that does the following:
    A) Merges the training and test sets to create a unified data set
    B) Extracts ongly the measurements on the mean and standard deviation for each measurement
    C) Uses descriptive activity names to name the activities in the data set (okay- I'll revisit this one once I've reviewed the data set overview)
    D) Appropriately labels the data set with descriptive variable names (similarly revisit)
    E) From the data set in step 4, creates a second, indepentant tidy data set with the average of each variable for each activity and each subject
  
## WOW....
So seriously, this is bad. I really hope this isn't what I should expect as assignment prompts for the rest of the courses- otherwise I may drop this specialization... Seriously, how about giving a more realistic prompt? There is nothing in this prompt that clearly indicates why the original data set isn't optimal for use in data analysis, nor does it explain the utility for transforming the data into this output... anyways, lets get this knocked out...

# Now that I've read the data set overview, what do I actually need to do?
*Remember to Acknowledge the Data License Requirements in the Dataset README

1) Create a GitHub REPO containing the following files:
    *CodeBook.md
    *License.md
    *MyNotes.md
    *README.md
    *acquire_project_data.R
    *run_analysis.R (I'm peeved at this script name because the prompt specifically states we're not running analysis- we're simply cleaning the data!)
    *tidy_data_set_submission.txt

2) Work on developing the R script 'acquire_project_data.R' to download and load the initial dataset into R

3) Work on developing the R script 'run_analysis.R' which:
    A) Merges the training and test data sets into a singular data set
    B) Extracts only the measurements on the mean and standard deviation for each measurement
* Investigate completing both of these steps in a singular action in order to preserve memory due to the size of the datasets
    C) Uses/Assigns Descriptive Activity Names to the Dataset ????
    D) Labels the Dataset with Appropriate Descriptive Variable Names
    E) Creates a new Dataset with the average of each variable for each activity and each subject???
    F) Compare my results with others to identify if I am on the right path...

4) Document my Commit Notes and explanations into README & CodeBook files

5) Submit & Hope for success!

I'm going to stop here for the moment, commit this point of the notes to the REPO, and get started on figuring this out!

