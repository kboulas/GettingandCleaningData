## This script imports the accelerometer and gyroscopic data and 
## merges the data sets

import_data <- function(){

        ## Navigate to the data directory where you saved the data files, and select 
        ## the features.txt (data label) file
        message("Select Features.txt file...")
        featuresFile <- file.choose()
        
        ## Read the features.txt file into a data set
        featureData <- read.table(featuresFile, colClasses = "character")
        featureLabels <- featureData[,2]
        
        ## Generate a vector of length 561 with the field widths for the data (fixed width = 16)
        fw <- vector()
        for (i in 1:561) {
                fw[i] <- 16
        }
        
        ## Read the test files
        
        ## Navigate to the "test" data directory where you saved the data files, and select 
        ## the x_train.txt (data) file
        
        ## Choose the test data file
        message("Select x_test.txt file...")
        testFile <- file.choose()
        
        ## Read the test data file
        message("processing the test data...")
        testDat <- read.fwf(testFile, widths = fw, buffersize = 100, col.names = featureLabels)
        
        ## Navigate to the data directory where you saved the data files, and select 
        ## the y_train.txt (activity code) file
        
        ## Choose the test activity file
        message("Select y_test.txt file...")
        testActivityFile <- file.choose()
        
        ## Read the test activity file
        testActivity <- read.table(testActivityFile, col.names = "Activity", colClasses = "factor")
        
        ## Choose the test subject file
        message("Select subject_test.txt file...")
        testSubjectFile <- file.choose()
        
        ## Read the subject activity file
        testSubject <- read.table(testSubjectFile, col.names = "Subject", colClasses = "factor")
        
        
        ## Bind the test subject, test data and test activities codes by column
        test <- cbind(testSubject, testActivity, testDat)
        
        ## Navigate to the data directory where you saved the data files, and select 
        ## the y_train.txt (data) file
        
        ## Choose the train data file 
        message("Select x_train.txt file...")
        trainFile <- file.choose()
        
        ## Read the train data file
        message("processing the train data...")
        trainDat <- read.fwf(trainFile, widths = fw, buffersize = 100, col.names = featureLabels)
        
        ## Navigate to the data directory where you saved the data files, and select 
        ## the y_train.txt (activity code) file
        
        ## Choose the train activity file
        message("Select y_train.txt file...")
        trainActivityFile <- file.choose()
        
        ## Read the train activity file
        trainActivity <- read.table(trainActivityFile, col.names = "Activity", colClasses = "factor")
        
        ## Choose the train subject file
        message("Select subject_train.txt file...")
        trainSubjectFile <- file.choose()
        
        ## Read the train subject file
        trainSubject <- read.table(trainSubjectFile, col.names = "Subject", colClasses = "factor")
        
        ## Bind the train subject, train data and train activities code by column
        train <- cbind(trainSubject, trainActivity, trainDat)
        
        ## Merge the test and train data files
        allDat <- rbind(test,train)
        
        ## Subset the data to take only mean and standard deviation data
        
        ## identify columns related to mean or standard deviation
        subsDat <- c(1:8,43:48,83:88,123:128,163:168,203:204,216:217,229:230,242:243,
                     255:256,268:273,296:298,347:352,375:377,426:431,454:456,505:506,515,
                     518:519,528,531:532,541,544:545,554,557:563)
        
        ## extract allDat taking only the columns above
        analysisDat <- allDat[,subsDat]
        analysisDat$Activity <- as.factor(analysisDat$Activity)
        
        return(analysisDat)

}
