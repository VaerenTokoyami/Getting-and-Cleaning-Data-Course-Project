# My CodeBook for JHU/Coursera's "Getting and Cleaning Data" End of Course Project
This codebook is meant to augment the README and MyNotes background files located in this REPO for my final project entry.

This CodeBook is divided into three sections:
1) Data
2) Variables
3) Transformations

## 1) Data
* This project is reliant upon a .zip file titled: "UCI HAR Dataset.zip", which is hosted by University of California Irvine's Machine Learning Repository. Additional information on this dataset can be found in the README file.

* This project outputs a new, clean & tidy dataset in the form of a text file containing space separated values titled: "tidy_data_set_submission.txt"

## 2) Variables
Each row of measurement data from the original dataset contains 561 variables, and this is condensed for the output dataset into 81 variables, including 2 identifiers and 79 measurements. Only those variables relevent to the output dataset will be reviewed.

### Identifiers
* Subject
This is the identifier of the subject number, as an integer, ranges from 1 to 30.

* Activity
Activity identifier, as a string as identified in the dataset's README file, 6 possible values:
    * WALKING - subject was walking
    * WALKING_UPSTAIRS - subject was walking up a staircase
    * WALKING_DOWNSTAIRS - subject was walking down a staircase
    * SITTING - subject was in a seated position
    * STANDING - subject was standing
    * LAYING - subject was in a horizontal laying position
    
### Measurements
All measurements are floating-point values, normalised and bounded within [-1,1].

Prior to normalisation, acceleration measurements (variables containing Accelerometer) were made in g's (9.81 m.s⁻²) and gyroscope measurements (variables containing Gyroscope) were made in radians per second (rad.s⁻¹).

Magnitudes of three-dimensional signals (variables containing Magnitude) were calculated using the Euclidean norm.

The measurements are classified in two domains:
* Time-domain signals (variables prefixed by timeDomain), resulting from the capture of accelerometer and gyroscope raw signals.
* Frequency-domain signals (variables prefixed by frequencyDomain), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

#### Time-Domain Signals
* Average time-domain body acceleration in the X, Y and Z directions:
    * timeDomain_Body_Accelerometer_Mean_X
    * timeDomain_Body_Accelerometer_Mean_Y
    * timeDomainB_ody_Accelerometer_Mean_Z

* Standard deviation of the time-domain body acceleration in the X, Y and Z directions:
    * timeDomain_Body_Accelerometer_standardDeviation_X
    * timeDomain_Body_Accelerometer_standardDeviation_Y
    * timeDomain_Body_Accelerometer_standardDeviation_Z

* Average time-domain gravity acceleration in the X, Y and Z directions:
    * timeDomain_Gravity_Accelerometer_Mean_X
    * timeDomain_Gravity_Accelerometer_Mean_Y
    * timeDomain_Gravity_Accelerometer_Mean_Z

* Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
    * timeDomain_Gravity_Accelerometer_standardDeviation_X
    * timeDomain_Gravity_Accelerometer_standardDeviation_Y
    * timeDomain_Gravity_Accelerometer_standardDeviation_Z

* Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
    * timeDomain_Body_Accelerometer_Jerk_Mean_X
    * timeDomain_Body_Accelerometer_Jerk_Mean_Y
    * timeDomain_Body_Accelerometer_Jerk_Mean_Z

* Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
    * timeDomain_Body_Accelerometer_Jerk_standardDeviation_X
    * timeDomain_Body_Accelerometer_Jerk_standardDeviation_Y
    * timeDomain_Body_Accelerometer_Jerk_standardDeviation_Z

* Average time-domain body angular velocity in the X, Y and Z directions:
    * timeDomain_Body_Gyroscope_Mean_X
    * timeDomain_Body_Gyroscope_Mean_Y
    * timeDomain_Body_Gyroscope_Mean_Z

* Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:
    * timeDomain_Body_Gyroscope_standardDeviation_X
    * timeDomain_Body_Gyroscope_standardDeviation_Y
    * timeDomain_Body_Gyroscope_standardDeviation_Z

* Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
    * timeDomain_Body_Gyroscope_Jerk_Mean_X
    * timeDomain_Body_Gyroscope_Jerk_Mean_Y
    * timeDomain_Body_Gyroscope_Jerk_Mean_Z

* Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
    * timeDomain_Body_Gyroscope_Jerk_standardDeviation_X
    * timeDomain_Body_Gyroscope_Jerk_standardDeviation_Y
    * timeDomain_Body_Gyroscope_Jerk_standardDeviation_Z

* Average and standard deviation of the time-domain magnitude of body acceleration:
    * timeDomain_Body_Accelerometer_Magnitude_Mean
    * timeDomain_Body_Accelerometer_Magnitude_standardDeviation

* Average and standard deviation of the time-domain magnitude of gravity acceleration:
    * timeDomain_Gravity_Accelerometer_Magnitude_Mean
    * timeDomain_Gravity_Accelerometer_Magnitude_standardDeviation

* Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
    * timeDomain_Body_Accelerometer_Jerk_Magnitude_Mean
    * timeDomain_Body_Accelerometer_Jerk_Magnitude_standardDeviation

* Average and standard deviation of the time-domain magnitude of body angular velocity:
    * timeDomain_Body_Gyroscope_Magnitude_Mean
    * timeDomain_Body_Gyroscope_Magnitude_standardDeviation

* Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
    * timeDomain_Body_Gyroscope_Jerk_Magnitude_Mean
    * timeDomain_Body_Gyroscope_Jerk_Magnitude_standardDeviation

#### Frequency-Domain Signals
* Average frequency-domain body acceleration in the X, Y and Z directions:
    * frequencyDomain_Body_Accelerometer_Mean_X
    * frequencyDomain_Body_Accelerometer_Mean_Y
    * frequencyDomain_Body_Accelerometer_Mean_Z

* Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:
    * frequencyDomain_Body_Accelerometer_standardDeviation_X
    * frequencyDomain_Body_Accelerometer_standardDeviation_Y
    * frequencyDomain_Body_Accelerometer_standardDeviation_Z

* Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:
    * frequencyDomain_Body_Accelerometer_Mean_Frequency_X
    * frequencyDomain_Body_Accelerometer_Mean_Frequency_Y
    * frequencyDomain_Body_Accelerometer_Mean_Frequency_Z

* Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
    * frequencyDomain_Body_Accelerometer_Jerk_Mean_X
    * frequencyDomain_Body_Accelerometer_Jerk_Mean_Y
    * frequencyDomain_Body_Accelerometer_Jerk_Mean_Z

* Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
    * frequencyDomain_Body_Accelerometer_Jerk_standardDeviation_X
    * frequencyDomain_Body_Accelerometer_Jerk_standardDeviation_Y
    * frequencyDomain_Body_Accelerometer_Jerk_standardDeviation_Z

* Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
    * frequencyDomain_Body_Accelerometer_Jerk_Mean_Frequency_X
    * frequencyDomain_Body_Accelerometer_Jerk_Mean_Frequency_Y
    * frequencyDomain_Body_Accelerometer_Jerk_Mean_Frequency_Z

* Average frequency-domain body angular velocity in the X, Y and Z directions:
    * frequencyDomain_Body_Gyroscope_Mean_X
    * frequencyDomain_Body_Gyroscope_Mean_Y
    * frequencyDomain_Body_Gyroscope_Mean_Z

* Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:
    * frequencyDomain_Body_Gyroscope_standardDeviation_X
    * frequencyDomain_Body_Gyroscope_standardDeviation_Y
    * frequencyDomain_Body_Gyroscope_standardDeviation_Z

* Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:
    * frequencyDomain_Body_Gyroscope_Mean_Frequency_X
    * frequencyDomain_Body_Gyroscope_Mean_Frequency_Y
    * frequencyDomain_Body_Gyroscope_Mean_Frequency_Z

* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
    * frequencyDomain_Body_Accelerometer_Magnitude_Mean
    * frequencyDomain_Body_Accelerometer_Magnitude_standardDeviation
    * frequencyDomain_Body_Accelerometer_Magnitude_Mean_Frequency

* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
    * frequencyDomain_Body_Accelerometer_Jerk_Magnitude_Mean
    * frequencyDomain_Body_Accelerometer_Jerk_Magnitude_standardDeviation
    * frequencyDomain_Body_Accelerometer_Jerk_Magnitude_Mean_Frequency

* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:
    * frequencyDomain_Body_Gyroscope_Magnitude_Mean
    * frequencyDomain_Body_Gyroscope_Magnitude_standardDeviation
    * frequencyDomain_Body_Gyroscope_Magnitude_Mean_Frequency

* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
    * frequencyDomain_Body_Gyroscope_Jerk_Magnitude_Mean
    * frequencyDomain_Body_Gyroscope_Jerk_Magnitude_standardDeviation
    * frequencyDomain_Body_Gyroscope_Jerk_Magnitude_Mean_Frequency

## 3) Transformations
The following transformations were applied to the source data by the script run_analysis.R:
    1) The training and test sets were combined to create a single unified dataset.
    2) The measurements for the mean and standard deviations of signals were extracted along with subject and activity identifiers and all other measurements were discarded.
    3) The activity identifiers which were originally integer codes were replaced with the descriptive activity strings
    4) The variable names were expanded into comprehendible names using the following rulesets:
        * Special characters () and - were removed
        * The abbreviations for time and frequency domains were expanded
        * Abbreviations for accellerometer, gyroscope, magnatitude, frequency, mean, and standard deviations were expanded
        * a underscore seperator was inserted between all terms
        * corrected errors in the "bodybody" data ingestion and trailing underscores
    5) Created a new, tidy, and sub-organized datasetset with the mean for each variable for each subject and subject's activity