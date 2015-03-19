#Getting and Cleansing Data Code Book

##Data Overview

In this project, we were asked to look at a data set collected from accelerometers on Samsung Galaxy S smartphones. 

Analysis was done on the files provided, and an output file (data_file.txt) has been generated which summarises the data. 
This document describes the output file, and the process used to get to it.

##Output Summary

The output file contains a summary of the variables listed in the Variable List section. Each variable has been
grouped by the following : 

* Subject
* Activity

The statistical method used to summarise the data is "mean". NA values have been removed. 

##Transformations

Various transformations had to be done to the data to produce the final result. 

* Originally, the Test and Train data were in two seperate files. These were combined into a single file during analysis (and are combined in the final result).

* The original files also contained a much larger number of measurements. Only the Mean and Standard Deviation were chosen to be summised, and the end result reflects this. 

* The variable names were also cleaned, as originally they had symbols such as "()" and "-" which made the names difficult to read. 

* Activities were originally in a seperate file to the measurements, and also in numeric form rather than a text description. These activites were combined into a single file, and translated into the text description.

* Finally, Subject was also not present in the original measurement files, and was combined in the analysis process.

##Variable List

Below is a list of all variables present in the output file. All variables are Numeric. 

* Subject
* ActivityName
* tBodyAcc Mean X
* tBodyAcc Mean Y
* tBodyAcc Mean Z
* tBodyAcc STD X
* tBodyAcc STD Y
* tBodyAcc STD Z
* tGravityAcc Mean X
* tGravityAcc Mean Y       
* tGravityAcc Mean Z
* tGravityAcc STD X
* tGravityAcc STD Y
* tGravityAcc STD Z
* tBodyAccJerk Mean X      
* tBodyAccJerk Mean Y
* tBodyAccJerk Mean Z
* tBodyAccJerk STD X
* tBodyAccJerk STD Y
* tBodyAccJerk STD Z       
* tBodyGyro Mean X
* tBodyGyro Mean Y
* tBodyGyro Mean Z
* tBodyGyro STD X
* tBodyGyro STD Y          
* tBodyGyro STD Z
* tBodyGyroJerk Mean X
* tBodyGyroJerk Mean Y
* tBodyGyroJerk Mean Z
* tBodyGyroJerk STD X      
* tBodyGyroJerk STD Y
* tBodyGyroJerk STD Z
* tBodyAccMag Mean
* tBodyAccMag STD
* tGravityAccMag Mean      
* tGravityAccMag STD
* tBodyAccJerkMag Mean
* tBodyAccJerkMag STD
* tBodyGyroMag Mean
* tBodyGyroMag STD         
* tBodyGyroJerkMag Mean
* tBodyGyroJerkMag STD
* fBodyAcc Mean X
* fBodyAcc Mean Y
* fBodyAcc Mean Z          
* fBodyAcc STD X
* fBodyAcc STD Y
* fBodyAcc STD Z
* fBodyAccJerk Mean X
* fBodyAccJerk Mean Y      
* fBodyAccJerk Mean Z
* fBodyAccJerk STD X
* fBodyAccJerk STD Y
* fBodyAccJerk STD Z
* fBodyGyro Mean X         
* fBodyGyro Mean Y
* fBodyGyro Mean Z
* fBodyGyro STD X
* fBodyGyro STD Y
* fBodyGyro STD Z          
* fBodyAccMag Mean
* fBodyAccMag STD
* fBodyBodyAccJerkMag Mean
* fBodyBodyAccJerkMag STD
* fBodyBodyGyroMag Mean    



##Appendix

Please see run_analysis.R in this repository for the code used for analysis. 

