# Tidy-Data
**Programming Assignment for Getting and Cleaning Data**

This repository contains files based on a dataset from the University of California, Irvine. Thirty volunteers from the ages of 19 to 48 performed six activities while wearing a Samsung Galaxy S smartphone on their waist. These activities were: (1) walking, (2) walking upstairs, (3) walking downstairs, (4) sitting, (5) standing, and (6) laying. Using the accelerometer and gyroscope embedded in the smartphones, researchers measured their acceleration and velocity across three spatial axes.

The files in this repository are:

  * run_analysis.R: R code for organizing and reshaping the dataset  
  Six data frames from the UCI HAR dataset were merged and given more descriptive column names. Mean and standard variation variables were extracted. The resulting data frame was melted and recast to calculate the mean for each variable by subject and activity. This tidy dataset was written as a text file.
  * tidydata.txt: text file with tidy dataset resulting from the R code
  * codebook.md: text file describing the variables in the dataset
