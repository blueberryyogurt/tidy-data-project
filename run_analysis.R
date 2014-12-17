


run_analysis <- function(){
	
	#unzip the Samsung data
	unzip("getdata-projectfiles-UCI HAR Dataset.zip")
	
	
	#read the necessary files
	features <- read.table('UCI\ HAR\ Dataset/features.txt')
	labels <- read.table('UCI\ HAR\ Dataset/activity_labels.txt')

	train <- read.table('UCI\ HAR\ Dataset/train/X_train.txt')
	test <- read.table('UCI\ HAR\ Dataset/test/X_test.txt')

	trainSubject <- read.table('UCI\ HAR\ Dataset/train/subject_train.txt')
	testSubject <- read.table('UCI\ HAR\ Dataset/test/subject_test.txt')

	trainActivity <- read.table('UCI\ HAR\ Dataset/train/Y_train.txt')
	testActivity <- read.table('UCI\ HAR\ Dataset/test/Y_test.txt')


	#combine the training and test data sets
	total <- rbind(train, test)
	activity <- rbind(trainActivity, testActivity)
	subject <- rbind(trainSubject, testSubject)
	
	#subset `total` so that it only includes the relevant variables
	vars <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 
				266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543) 
	total <- total[,vars]
	
	#assign meaningful variable names
	names(total) <- features[vars, 2] 
	names(activity) <- 'ActivityName' 
	names(subject) <- 'SubjectID'
	
	#replace each activity number with a meaningful activity name
	activity$ActivityName <- as.factor(activity$ActivityName)
	levels(activity$ActivityName) <- as.factor(labels$V2) 
	
	#create the first data set 
	TidyData <- cbind(subject, activity, total)
	
	#create the second data set
	#average by SubjectID, average by ActivityName, and average by the pair (SubjectID, ActivityName)
	justNumbers <- TidyData
	justNumbers$SubjectID <- NULL
	justNumbers$ActivityName <- NULL
	TidyData_Averages <- rbind(aggregate(justNumbers, list(TidyData$SubjectID, rep("ALL Activities", nrow(justNumbers))), mean),
				   aggregate(justNumbers, list(rep("ALL Subjects", nrow(justNumbers)), TidyData$ActivityName), mean),
				   aggregate(justNumbers, list(TidyData$SubjectID, TidyData$ActivityName), mean))
	names(TidyData_Averages) <- names(TidyData)  #recover meaningful variable names		
	write.table(TidyData_Averages, 'TidyData_Averages.txt', row.names=FALSE)	   
}








