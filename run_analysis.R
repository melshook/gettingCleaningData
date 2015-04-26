run_analysis <- function (){
        ##this script will perform several functions to create a tidy data set
        ##In order for you to run this script, the following files should be in
        ##your working directory:
        ##  activity_labels.txt; features.txt; subject_test.txt; X_test.txt;
        ##  y_test.txt; subject_train.txt; X_train.txt; y_train.txt.
        ##You will need to have installed the dplyr and stringr packages
        
        ##Step 1: Load required packages and load all of the test data, training data, and labels into 
        ##dataframes so I can manipulate the data.
            ##load packages
        library(dplyr)
        library(stringr)
            ##load labels
        activities <- read.table("activity_labels.txt")
        features <- read.table("features.txt")
           ##modify feature labels to make it easier to find the columns needed
        features2 <- tolower(features$V2)
        features2 <- sub("mean", "need1", features2)
        features2 <- sub("std", "need2", features2)
        features2 <- gsub("-", "", features2)
        features2 <- sub("need1freq", "NA", features2)
        features2 <- gsub("\\(", "", features2)
        features2 <- gsub("\\)", "", features2)
        features2 <- gsub("\\,", "", features2)
            ##load measurements
        xtest <- read.table("X_test.txt")
        xtrain <- read.table("X_train.txt")
            ##load activities
        ytest <- read.table("y_test.txt")
        ytrain <- read.table("y_train.txt")
            ##load subjects
        subtest <- read.table("subject_test.txt")
        subtrain <- read.table("subject_train.txt")
        
        ##Step 2: Label the test and training sets to ensure the subjects, 
        ##activities, and measurements are aligned properly in the data set.
       
          ##label the measurements
        colnames(xtest) <- features2
        colnames(xtrain) <- features2
          ##label the activities and substitute meaningful names for the numbers
        colnames(ytest) <- c("Activity")
        colnames(ytrain) <- c("Activity")
        ytest$Activity <- activities[match(ytest$Activity, activities$V1),2]
        ytrain$Activity <- activities[match(ytrain$Activity, activities$V1),2]
          ##label the subject data sets
        colnames(subtest) <- c("Subject")
        colnames(subtrain) <- c("Subject")
        
        ##Step3: Merge the test and training data sets. First I merge the test
        ##data with the subjects and activities, then I do the same with the 
        ##training data, then I combine the two sets.
        testData <- cbind(subtest, ytest, xtest)
        trainData <-cbind(subtrain, ytrain, xtrain)
        combinedData <- rbind(testData,trainData)
        
        ##Step4: Extract the measurements on mean and standard deviation for each
        ##measurement. There must be a more elegant way to do this in one step,
        ##but in the interest of time I have done this in two steps and will 
        ##research how to improve
        
          ##create a subset of all means and standard deviations
        
        extractStdMeans <- 
                combinedData[, grep("need", colnames(combinedData),fixed=TRUE)]
        
          ##subset the data to include subject, activity and means and 
          ##standard deviations
         
        dataset1 <- combinedData[,c("Subject", "Activity", 
                                    colnames(extractStdMeans))]
        
           ##rename the columns to be meaningful
        colnames(dataset1) <- sub("need1", "mean", colnames(dataset1))
        colnames(dataset1) <- sub("need2", "std", colnames(dataset1))
        
        ##Step5: Create second, tidy data set with the average of each
        ##variable for each activity and each subject
        
        tidyData <- aggregate(.~Subject + Activity, data=dataset1, mean)
        ##add the prefix "avg" to the column names to indicate they are 
        ##average values
        colnames(tidyData)[3:75] <- str_c("avg", colnames(tidyData)[3:75])
              ##order by the Subject and Activity columns
        tidyData <- arrange(tidyData, Subject, Activity)
              ##writes the data to a text file with headers
        write.table(tidyData, file="tidyData.txt", row.name=FALSE)
              ##loads the text file into a dataframe
        tidyData <- read.table("tidyData.txt", header=TRUE)
        print("File created")
}

