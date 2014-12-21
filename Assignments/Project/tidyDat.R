## This function writes out the tidy data to a file called Assignment1_tidydata.txt

write_tidy_data <- function (tDat) {
        
        ## set the output file
        filenm <- "Assignment1_tidydata.txt"
        
        ## write the text file
        write.table(tDat,file = filenm, col.names = TRUE, row.names = FALSE, sep = ",")
        
}