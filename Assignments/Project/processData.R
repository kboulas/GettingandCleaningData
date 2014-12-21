## Process data to create a separate data set that includes the means for each variable
## by activity by subject - takes a dataset with an Activity, ActivityLabel and a 
## Subject as the first 3 columsn and returns the means of each column 4:n where N is 
## the number of columns in the dataset 

process_data <- function (dat) {
        
        ## Include Reshape2 library
        require(reshape2)
        
        ## Melt the data frame, identifying id vars
        meltedDat <- melt(dat, id.vars = c("ActivityCode", "ActivityLabel", "Subject"), 
                          factorsAsStrings = TRUE)
        
        ## cast a new data frame taking the mean for each id var combination
        processedDat <- dcast(meltedDat, ActivityLabel + Subject ~ variable, mean)
       
        return (processedDat)
        
}


