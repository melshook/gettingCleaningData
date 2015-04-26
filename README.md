Getting and Cleaning Data Course Project Readme

This document explains how I approached the creation of the run_analysis.R script and the resulting tidy data set. The original data was downloaded from this link per the project instructions: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

This repository contains three files: this README.md file, the run_analysis.R script, and the Codebook.md file. The run_analysis.R script processes the data provided at the above link and writes a tidy data set to a file named "tidyData.txt", containing the averages for each subject and activity across all means and standard deviations variables. The Codebook.md file contains an expansion of the provided features_info.txt file that includes the new variables in the tidy data set created by the run_analysis.R script.

Notes on running the script:

1. You must have all the data files in your working directory (not in subdirectories such as "test" and "train".) 
2. The files used in the script are noted in the script and listed here: activity_labels.txt; features.txt; subject_test.txt; X_test.txt;y_test.txt; subject_train.txt; X_train.txt; y_train.txt.
3. You must have installed the dplyr and stringr packages in order to run the script. 

What the script does:

1. Loads the dplyr and stringr packages for later use.
2. Loads all the variable names from the features.txt file and the activity labels from the activity_labels.txt file into dataframes.
3. Edits the variable names.One of the problems I had was that when I loaded the feature names directly as column names, some of the longer names were viewed as "duplicate" column names by R. So in order to avoid that problem, I did some work on the text in the features file to remove dashes and parentheses. Another problem I had was grepping the right column names for the extract of means and standard deviations. To make this easier, I temporarily changed everything "mean" to "need1" and "std" to "need2" in order to make it easier to grep everything with the name "need" in it. Then I change them back later in the script, after I've extracted the required columns. I'm sure there is a more elegant way to do this, but in the interest of time, I did it this way.
4.Loads all the data from X_test.txt, y_test.txt, subject_test.txt, X_train.txt, y_train.txt, and subject_train.txt into separate dataframes. 
5. Renames all the variable names in the text and train sets to the feature names created above.
6. Renames all the activities from numbers to meaningful names in the text and train sets.
7. Renames the subject column to "Subject" and the activity label column to "Activity"
8. Combines the subject_test, y_test, and X_test dataframes into one test set data frame, and combines all the training data in the same manner. I wanted the data to be in the order of "Subject", "Activity" and then all the variables. 
9. Combines the resulting test dataframe and training dataframe to create one dataset.
10. Extracts only the variables that are means and standard deviations. I struggled with this because I couldn't seem to subset the Subject and Activity along with the grepped columns, so my solution is a little klunky. However, it works.
11. Creates a new tidy data set that contains the averages for each variable by subject and activity. My interpretation of the instructions were that I needed to be able to see each variable averaged for each subject and activity combination. There are 30 subjects and 6 activities, so I ended up with 180 observations (rows) in the tidy data set, with the Subject, Activity columns followed by 73 variables of averages for means or standards deviations included in the original data set. I aggregated across subject, activity to get this data, then re-ordered by subject, activity.
12. Writes the tidy data set to a file named "tidyData.txt" which should appear in your working directory if the script is successful. If you want to read the file into a dataframe, use header=TRUE parameter so that the headers will show up as column names - otherwise it puts the header in the first row and names the columns "V1", "V2", etc. 
                 example: 
                      tidyData <- read.table("tidyData.txt", header=TRUE)
