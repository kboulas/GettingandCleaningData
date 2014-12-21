## This function merges activity names with the processed data set
label_activities <- function (mDat) {
        
        ## Navigate to the data directory where you saved the data files, and select 
        ## the activity_labels.txt (data label) file
        message("Select activity_labels.txt file...")
        activityLabelFile <- file.choose()
                
        ## Read the features.txt file into a data set
        activityLabels <- read.table(activityLabelFile, colClasses = c("numeric","character"), 
                                     col.names = c("ActivityCode", "ActivityLabel"))
        
        ## Merge the activity labels with the data file
        labeledDat <- merge(activityLabels, mDat, by.x = "ActivityCode", by.y = "Activity", 
                            sort = FALSE)
        labeledDat$ActivityCode <- as.factor(labeledDat$ActivityCode)
        
        return(labeledDat)
        
}