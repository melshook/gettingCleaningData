Getting and Cleaning Data Codebook

This file is an expansion of the "features_info.txt" file provided with the course project data, downloaded from this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
A full description of the data can be found at this location: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Project Purpose
===============
The purpose of this project was to obtain the data from the "Human Activity Recognition Using Smartphones Data Set", combine the data into a single dataset, then extract the variables representing means and standard deviations and create a new "tidy" data set of the average of each of those variables by subject and activity.

Feature Selection (for the new tidy data set)
=============================================
Each variable that represented a mean or standard deviation was aggregated by subject and activity and then averaged. The column names were pre-fixed with "avg" to indicate that the values represent the average of the variables for that subject and activity. The new features introduced in the tidy data set are described in this section. All of the numeric variables are averages of the provided data. More information about how the raw data was processed is provided in the original features_info.txt file which is reproduced in the next section of this document. More information about how the data was manipulated and cleaned up to produce the tidy data set is included in the README.md file in this repository.

1. Subject (integer)
   This is an integer representing the subject performing the activity in the test. There are 30 subjects in the data.
2. Activity (factor)
   There are six activities included in the data: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3. avgtbodyaccmeanx (numeric)
   This is the average of the accelerometer mean values along the x axis of the phone.
4. avgtbodyaccmeany (numeric)
   This is the average of the accelerometer mean values along the y axis of the phone.
5. avgtbodyaccmeanz (numeric)
   This is the average of the accelerometer mean values along the z axis of the phone.
6. avgtbodyaccstdx (numeric)
   This is the average of the accelerometer standard deviation values along the x axis of the phone.
7. avgtbodyaccstdy (numeric)
   This is the average of the accelerometer standard deviation values along the y axis of the phone.
8. avgtbodyaccstdz (numeric)
   This is the average of the accelerometer standard deviation values along the z axis of the phone.
9. avgtgravityaccmeanx (numeric)
   This is the average of the accelerometer gravity mean values along the x axis of the phone.
10. avgtgravityaccmeany (numeric)
   This is the average of the accelerometer gravity mean values along the y axis of the phone.
11. avgtgravityaccmeanz (numeric)
   This is the average of the accelerometer gravity mean values along the z axis of the phone.
12. avgtgravityaccstdx (numeric)
   This is the average of the accelerometer gravity standard deviation values along the x axis of the phone.
13. avgtgravityaccstdy (numeric)
   This is the average of the accelerometer gravity standard deviation values along the y axis of the phone.
14. avgtgravityaccstdz (numeric)
   This is the average of the accelerometer gravity standard deviation values along the z axis of the phone.
15. avgtbodyaccjerkmeanx (numeric)
   This is the average of the accelerometer jerk mean values along the x axis of the phone.
16. avgtbodyaccjerkmeany (numeric)
   This is the average of the accelerometer jerk mean values along the y axis of the phone.
17. avgtbodyaccjerkmeanz (numeric)
  This is the average of the accelerometer jerk mean values along the z axis of the phone.
18. avgtbodyaccjerkstdx (numeric)
  This is the average of the accelerometer jerk standard deviation values along the x axis of the phone.
19. avgtbodyaccjerkstdy (numeric)
   This is the average of the accelerometer jerk standard deviation values along the y axis of the phone.
20. avgtbodyaccjerkstdz (numeric)
   This is the average of the accelerometer jerk standard deviation values along the x axis of the phone.
21. avgtbodygyromeanx (numeric)
   This is the average of the gyroscope mean values along the x axis of the phone.
22. avgtbodygyromeany (numeric)
   This is the average of the gyroscope mean values along the y axis of the phone.
23. avgtbodygyromeanz (numeric)
   This is the average of the gyroscope mean values along the z axis of the phone.
24. avgtbodygyrostdx (numeric)
   This is the average of the gyroscope standard deviation values along the x axis of the phone.
25. avgtbodygyrostdy (numeric)
   This is the average of the gyroscope standard deviation values along the y axis of the phone.
26. avgtbodygyrostdz (numeric)
   This is the average of the gyroscope standard deviation values along the z axis of the phone.
27. avgtbodygyrojerkmeanx (numeric)
   This is the average of the gyroscope jerk mean values along the x axis of the phone.
28. avgtbodygyrojerkmeany (numeric)
   This is the average of the gyroscope jerk mean values along the y axis of the phone.
29. avgtbodygyrojerkmeanz (numeric)
   This is the average of the gyroscope jerk mean values along the z axis of the phone.
30. avgtbodygyrojerkstdx (numeric)
   This is the average of the gyroscope jerk standard deviation values along the x axis of the phone.
31. avgtbodygyrojerkstdy (numeric)
   This is the average of the gyroscope jerk standard deviation values along the y axis of the phone.
32. avgtbodygyrojerkstdz (numeric)
   This is the average of the gyroscope jerk standard deviation values along the z axis of the phone.
33. avgtbodyaccmagmean (numeric)
   This is the average of the accelerometer magnitude mean values along the x axis of the phone.
34. avgtbodyaccmagstd (numeric)
   This is the average of the accelerometer magnitude mean values along the y axis of the phone.
35. avgtgravityaccmagmean (numeric)
   This is the average of the accelerometer gravity magnitude mean values.
36. avgtgravityaccmagstd (numeric)
   This is the average of the accelerometer gravity magnitude standard deviation values.
37. avgtbodyaccjerkmagmean (numeric)
   This is the average of the accelerometer jerk magnitude mean values.
38. avgtbodyaccjerkmagstd (numeric)
   This is the average of the accelerometer jerk magnitude standard deviation values.
39. avgtbodygyromagmean (numeric)
   This is the average of the gyroscope magnitude mean values.
40. avgtbodygyromagstd (numeric)
   This is the average of the gyroscope magnitude standard deviation values.
41. avgtbodygyrojerkmagmean (numeric)
   This is the average of the gyroscope jerk magnitude mean values.
42. avgtbodygyrojerkmagstd (numeric)
   This is the average of the gyroscope jerk magnitude standard deviation values.
43. avgfbodyaccmeanx (numeric)
   This is the average of the Fast Fourier Transformed accelerometer mean values along the x axis of the phone.
44. avgfbodyaccmeany (numeric)
  This is the average of the Fast Fourier Transformed accelerometer mean values along the y axis of the phone.
45. avgfbodyaccmeanz (numeric)
  This is the average of the Fast Fourier Transformed accelerometer mean values along the z axis of the phone.
46. avgfbodyaccstdx (numeric)
  This is the average of the Fast Fourier Transformed accelerometer standard deviation values along the x axis of the phone.
47. avgfbodyaccstdy (numeric)
   This is the average of the Fast Fourier Transformed accelerometer standard deviation values along the y axis of the phone.
48. avgfbodyaccstdz (numeric)
   This is the average of the Fast Fourier Transformed accelerometer standard deviation values along the z axis of the phone.
49. avgfbodyaccjerkmeanx (numeric)
   This is the average of the Fast Fourier Transformed accelerometer jerk mean values along the x axis of the phone.
50. avgfbodyaccjerkmeany (numeric)
   This is the average of the Fast Fourier Transformed accelerometer jerk mean values along the y axis of the phone.
51. avgfbodyaccjerkmeanz (numeric)
   This is the average of the Fast Fourier Transformed accelerometer jerk mean values along the z axis of the phone.
52. avgfbodyaccjerkstdx (numeric)
   This is the average of the Fast Fourier Transformed accelerometer jerk standard deviation values along the x axis of the phone.
53. avgfbodyaccjerkstdy (numeric)
   This is the average of the Fast Fourier Transformed accelerometer jerk standard deviation values along the y axis of the phone.
54. avgfbodyaccjerkstdz (numeric)
   This is the average of the Fast Fourier Transformed accelerometer jerk standard deviation values along the z axis of the phone.
55. avgfbodygyromeanx (numeric)
   This is the average of the Fast Fourier Transformed gyroscope mean values along the x axis of the phone.
55. avgfbodygyromeany (numeric)
   This is the average of the Fast Fourier Transformed gyroscope mean values along the y axis of the phone.
56. avgfbodygyromeanz (numeric)
   This is the average of the Fast Fourier Transformed gyroscope mean values along the z axis of the phone.
57. avgfbodygyrostdx (numeric)
  This is the average of the Fast Fourier Transformed gyroscope standard deviation values along the x axis of the phone.
58. avgfbodygyrostdy (numeric)
  This is the average of the Fast Fourier Transformed gyroscope standard deviation values along the y axis of the phone.
59. avgfbodygyrostdz (numeric)
   This is the average of the Fast Fourier Transformed gyroscope standard deviation values along the z axis of the phone.
60. avgfbodyaccmagmean (numeric)
   This is the average of the Fast Fourier Transformed accelerometer magnitude mean values.
61. avgfbodyaccmagstd (numeric)
   This is the average of the Fast Fourier Transformed accelerometer magnitude standard deviation values.
62. avgfbodybodyaccjerkmagmean (numeric)
   This is the average of the Fast Fourier Transformed accelerometer jerk magnitude mean values.
63. avgfbodybodyaccjerkmagstd (numeric)
   This is the average of the Fast Fourier Transformed accelerometer jerk magnitude standard deviation values.
64. avgfbodybodygyromagmean (numeric)
   This is the average of the Fast Fourier Transformed gyroscope magnitude mean values.
65. avgfbodybodygyromagstd (numeric)
   This is the average of the Fast Fourier Transformed gyroscope magnitude standard deviation values.
66. avgfbodybodygyrojerkmagmean (numeric)
   This is the average of the Fast Fourier Transformed gyroscope jerk magnitude mean values.
67. avgfbodybodygyrojerkmagstd (numeric)
   This is the average of the Fast Fourier Transformed gyroscope jerk magnitude standard deviation values.
68. avgangletbodyaccmeangravity (numeric)
   This is the average of the values obtained by averaging the signals in a signal window sample of accelerometer mean gravity. 69. avgangletbodyaccjerkmeangravitymean (numeric)
   This is the average of the values obtained by averaging the signals in a signal window sample of accelerometer jerk mean gravity.
70. avgangletbodygyromeangravitymean (numeric)
   This is the average of the values obtained by averaging the signals in a signal window sample of gyroscope mean gravity.
71. avgangletbodygyrojerkmeangravitymean (numeric)
  This is the average of the values obtained by averaging the signals in a signal window sample of gyroscope jerk mean gravity.
72. avganglexgravitymean (numeric)
  This is the average of the values obtained by averaging the signals in a signal window sample of mean gravity along the x axis of the phone.
73. avgangleygravitymean (numeric)
   This is the average of the values obtained by averaging the signals in a signal window sample of mean gravity along the y axis of the phone.
74. avganglezgravitymean (numeric)
   This is the average of the values obtained by averaging the signals in a signal window sample of mean gravity along the z axis of the phone.



Feature Selection (from the original data set)
==============================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
