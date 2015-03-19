testData <- read.table("test/X_test.txt", header=FALSE) #Reads in the Test testData
trainData <- read.table("train/X_train.txt", header = FALSE) #Reads the Train data

fullData <- rbind(testData, trainData) #Combines the data sets

colnames(fullData) <- read.table("features.txt", header=FALSE)[,2] #Sets the column names

stdMeanData <- fullData[,grepl("std\\()|mean\\()", colnames(fullData))] #Restricts the columns by std and mean

activityNumbers <- read.table("test/y_test.txt", header=FALSE) #Reads the Activity Numbers 
activityNumbers <- rbind(activityNumbers, read.table("train/y_train.txt", header=FALSE))
activityLabels <- read.table("activity_labels.txt", header=FALSE) #Reads the Activity Labels

activityNumbers <- apply(activityNumbers, 1, function(x) as.character(activityLabels[x, 2])) #Converts the Activity Numbers to Labels

stdMeanData <- cbind(activityNumbers, stdMeanData) #Adds the Activity Descriptions to the set

names(stdMeanData)[1] <- "ActivityName"
names(stdMeanData) <- gsub("-", " ", names(stdMeanData))
names(stdMeanData) <- gsub("\\(\\)", " ", names(stdMeanData)) 
names(stdMeanData) <- gsub(" mean ", " Mean", names(stdMeanData))
names(stdMeanData) <- gsub(" std ", " STD", names(stdMeanData))

#--------------------STEP 5-----------------------

summaryDataSet <- stdMeanData #Creates a seperate data set

subjectNumbers <- read.table("test/subject_test.txt", header=FALSE)
subjectNumbers <- rbind(subjectNumbers, read.table("train/subject_train.txt", header=FALSE))

summaryDataSet <- cbind(subjectNumbers, summaryDataSet)
colnames(summaryDataSet)[1] <- "Subject"

groupedData <- group_by(summaryDataSet, Subject, ActivityName) #Groups the data by Subject and Activity

finalData <- summarise_each(groupedData, funs(mean)) #Summarises the data (mean)

write.table(finalData, "data_file.txt", row.names=FALSE) 








