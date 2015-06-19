# TODO: Add comment
# 
# Author: davidebrown
###############################################################################


# Getting and Cleaning Data Course Project Script
# Author:  David E Brown
# Name run_analysis.R
# Retrieve data sets into R data make data frames

# Merge the training and test sets to create one data set.
# Extract only the mean and standard deviation for each measurement
# Use Descriptive activity names to name the activities in the data set
# Appropriately label the dataset with descriptive variable names
# create a second indepenent tidy  data with the average of ecah activity and each subject

# For each record in the dataset, the following is provided: 
#  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
#- Triaxial Angular velocity from the gyroscope. 
#- A 561-feature vector with time and frequency domain variables. 
#- Its activity label. 
#- An identifier of the subject who carried out the experiment.


# 1 - read in data sets after downloaded and zip expanded
df_test_subject <- read.table("../UCI HAR Dataset/test/subject_test.txt")
df_test_x <- read.table("../UCI HAR Dataset/test/X_test.txt")
df_test_y <- read.table("../UCI HAR Dataset/test/y_test.txt")
df_train_subject <- read.table("../UCI HAR Dataset/train/subject_train.txt")
df_train_y <- read.table("../UCI HAR Dataset/train/y_train.txt")
df_train_x <- read.table("../UCI HAR Dataset/train/x_train.txt")
df_activity_labels <- read.table("../UCI HAR Dataset/activity_labels.txt")
# get column names for x tables
df_features_cols <- read.table("../UCI HAR Dataset/features.txt")
# set colnames vector
names <-df_features_cols[,2]
# set column headings for x variables
colnames(df_test_x) <- names
colnames(df_train_x) <- names
# get inertial signals
df_test_body_acc_x <- read.table("../UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
df_test_body_acc_y <- read.table("../UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
df_test_body_gyro_x <- read.table("../UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
df_test_body_gyro_y <- read.table("../UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
df_test_body_gyro_z <- read.table("../UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
df_test_total_acc_x <- read.table("../UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
df_test_total_acc_y <- read.table("../UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
df_test_total_acc_z <- read.table("../UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
df_test_body_acc_z <- read.table("../UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
# training ===================
df_train_body_acc_y <- read.table("../UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
df_train_body_acc_z <- read.table("../UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
df_train_body_gyro_x <- read.table("../UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
df_train_body_gyro_y <- read.table("../UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
df_train_body_gyro_z <- read.table("../UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")

df_train_total_acc_x <- read.table("../UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
df_train_total_acc_y <- read.table("../UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
df_train_total_acc_z <- read.table("../UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")
# Utility functions for modularity

