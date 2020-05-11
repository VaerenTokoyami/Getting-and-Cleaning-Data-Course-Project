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


# Back at it
So, a week later and I'm finally back at it- rather than take notes as I worked, I'm going in reverse, working through each of my previously proposed steps and taking notes as I complete steps. So, here it goes!

## Created the GitHub Repo
Pretty simple since I had already set-up the REPO last week, so just filled out the data files to be completed and spent a few minutes fining the Data license details from the original dataset. At least that's one part of this project complete!

## Completed acquire_project_data.R
So this step took some time to refamiliarize myself with the different core R file management commands and functions. Incredibly grateful I remember the function for the help tool- can't go wrong by abusing the help tool to work you're way through how to get the code to do what you want it to!

I organized this script to stick to the function of downloading the data and any libraries for the project and loading them into R Studio. So naturally since we're dealing with organizing data, then it makes sense to load dplyr to enable easy transformations of data into meaningful 'tidy' data. Next, I had to identify where the data is stored, and acquire the data, which is hosted in a zip format, so I would need to 'unzip' the data as well. Originally I was considering using curl function, but stumbled upon the download.file function, which seems to handle downloads more efficenty and even allows for multiple simultaneous downloads.

Now that I had the file downloaded, I needed to unzip the file, and went back to alter both functions to account for whether or not the file was downloaded and already unzipped - something I experimented with in later steps when I had accidentially typo'd the file extension for test_y_values.

Now the the data was downloaded, I attempted to manually open the files to explore the raw data so that I could assign meaningful variable names to each loaded data file. When attempting to open the .txt files resulted in crashing my notepad application, i stuck with training/test, then the variable name from the filename (subjects,x,y), then for x & y added 'values' to highlight these are data values- I will later revisit the data documentation for more meaninful data labels prior working on the run_analysis.R script, but wanted to ensure I could load the data prior to a lunch break.

Since the data folder structure was seperated into training and test data, I broke out the data importation by folder that way if I encountered any issues, I could easily isolate if the folder was a variable in play. Since I had no visibility of what the data appeared like, my first attempt worked in assuming the data was stored tables rather than more complex matricies- from there I just relied upon the R help files to ensure I assigned all neccessary values to get each function to properly load the data, then completed for both the training and test data.

Finally, I moved back out to the primary data folder (not project folder, just the main data folder), in which I loaded the features, but noticed that the second column contained duplicates- so to ensure I maintained the full table/dataset, I dug around the help file to identify the as.is variable to set as true to ensure R didn't deduplicate the second column and just retained the table "as is". I thin loaded the activty labels, and since they were missing headers, I assigned some to make the tidying process easier in the next step of this project- after I eat!

Prior to moving on- I reviewed the data reference material and altered the data labels to more accurately represent the data.

## Completed run_analysis.R

So yeah- like everything else thus far- once you break this down into bit-sized chunks, and sometimes break-it down even further, then it becomes extremely simplistic.

I began by loading /running the previously created script to acquire and load all the data for the assignment. Next I had to figure out the best method to combine all of the different tables into a singular data-set. This took a bit of trial and error, reviewing the earlier weeks of the course and looking at some different approaches to concatenating the data together. I ultimately determined it would be easiest to use row and column binding (this was greatly aided by the subjects for test and training didn't overlap). Then, by adding the column names from the activities table, I now had some column labels to work with and for the first time the data itself started to make sense- no longer was this data just numbers without context, now the context was beginning to take shape.

The next step, optional on my system, but I read in a lot of places that R is very memory intensive, so I removed the earlier tables from my environment ensuring that RAM was freed by closing these no longer needed tables from memory.

The next step was to determine which columns met the criteria of extracting only the measurements on meand and standard deviation- this took a little more time to determine exactly what was meant by the prompt's guidance on this step, but once I understood we were meant to cull the number of columns, then I knew we would be using grepl as we most recently learned how to use grepl and gsub. Then, once I assigned the desired columns to be kept to a variable, then I established that only these columns would remain in the dataset. 

The next steps were to assign and clean up activity and variable names.  Preferring python, it took me some time not just jumping into a for loop to swap the numeric codes for activities to the descriptive text, but I finally came across the factor function in the R help tool, and while I may have included an extra argument or 2, it seems to be working alright.

For the variable names, I tried for some time to figure out a smart easy way to clean these up, but ended up just with a list of gsub replacements in a variable list i scraped from the table's column names, which since was still part of the table, auto-refreshed the values in the table with any changes. I was disappointed at first with my underscore naming separation because some columns which didn't have X,Y or Z measurements had a trailing underscore- so I applied a REGEX fix to remove any trailing underscores.

Finally, I created the new independant tidy dataset utilizing dplyr's group_by and summarization functions. Once it appeared in the environment view of the table that this was what the end result should appear like, then I completed the script by writing the table to the project folder as required.

## README & CodeBook
So I'm about to go back through everything to knock these out- honestly feel like these notes should suffice, but at least I'm getting plenty of practice on conforming to standards :)

Thanks Again!
-Vaeren