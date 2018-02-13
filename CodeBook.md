# Code Book

## Data
This code book describes the variables, the data, and any transformations performed to clean up the data "Tidy Data for Human Activity Recognition Using Smartphones.txt", which is output in run_analysis.R.

## Transformations Performed
* Imported the original data, found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Merged the train and test data on "activity"
* Subset the merged data to only contain features with mean and standard deviation
* Joined "Activity_Name" to the data and dropped "activity" because it is redundant
* Changed the variable names to be more readable
* Calculated the average of each feature left in the subsetted data, grouping by "Activity_Name" and "Subject"


## Variable Descriptions
### Key Columns in the Output Data 
| Variable Name | Description                          |
| ------------- |:-------------------------------------|
| Subject       | ID of subject                        |
| Activity_Name | Activity Label, Factor with 6 Levels |

### Other Columns in the Output Data
| Variable Name | Description                          |
| ------------- |:-------------------------------------|
| Time_Body_Accelerometer_Mean_X               | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_Mean_Y               | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_Mean_Z               | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_StdDev_X             | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_StdDev_Y             | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_StdDev_Z             | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Gravity_Accelerometer_Mean_X            | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Gravity_Accelerometer_Mean_Y            | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Gravity_Accelerometer_Mean_Z            | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Gravity_Accelerometer_StdDev_X          | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Gravity_Accelerometer_StdDev_Y          | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Gravity_Accelerometer_StdDev_Z          | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_Jerk_Mean_X          | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_Jerk_Mean_Y          | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_Jerk_Mean_Z          | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_Jerk_StdDev_X        | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_Jerk_StdDev_Y        | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_Jerk_StdDev_Z        | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Mean_X                   | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Mean_Y                   | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Mean_Z                   | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_StdDev_X                 | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_StdDev_Y                 | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_StdDev_Z                 | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Jerk_Mean_X              | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Jerk_Mean_Y              | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Jerk_Mean_Z              | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Jerk_StdDev_X            | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Jerk_StdDev_Y            | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Jerk_StdDev_Z            | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_Magnitude_Mean       | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_Magnitude_StdDev     | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Gravity_Accelerometer_Magnitude_Mean    | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Gravity_Accelerometer_Magnitude_StdDev  | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_Jerk_Magnitude_Mean  | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Accelerometer_Jerk_Magnitude_StdDev| The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Magnitude_Mean           | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Magnitude_StdDev         | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Jerk_Magnitude_Mean      | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Time_Body_Gyroscope_Jerk_Magnitude_StdDev    | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Mean_X               | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Mean_Y               | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Mean_Z               | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_StdDev_X             | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_StdDev_Y             | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_StdDev_Z             | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Jerk_Mean_X          | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Jerk_Mean_Y          | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Jerk_Mean_Z          | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Jerk_StdDev_X        | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Jerk_StdDev_Y        | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Jerk_StdDev_Z        | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Gyroscope_Mean_X                   | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Gyroscope_Mean_Y                   | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Gyroscope_Mean_Z                   | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Gyroscope_StdDev_X                 | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Gyroscope_StdDev_Y                 | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Gyroscope_StdDev_Z                 | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Magnitude_Mean       | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Magnitude_StdDev     | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Jerk_Magnitude_Mean  | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Accelerometer_Jerk_Magnitude_StdDev| The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Gyroscope_Magnitude_Mean           | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Gyroscope_Magnitude_StdDev         | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Gyroscope_Jerk_Magnitude_Mean      | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |
| Freq_Body_Gyroscope_Jerk_Magnitude_StdDev    | The average of this feature, grouped by Subject and Activity_Name, with range -1 to 1 |

## Feature Descriptions
| Feature  | Description                         |
| ------------- |:-------------------------------------|
| Time or Frequency | Domain measurement
| Body or Gracity | Source signal of movement
| Accelerometer or Gyroscope | Measure of acceleration and velocity, respectively
| Jerk | Jerk signal
| Magnitude | Magnitude of the signal
| X, Y, or Y | Axis from triaxial acceleration or velocity
