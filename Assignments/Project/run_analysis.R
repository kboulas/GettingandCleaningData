## This script will load the data, process it, and export the tidy data to a file called
## Assignment1_tidydata.txt

## add the sources for the functions
source("importData.R")
source("labelActivity.R")
source("processData.R")
source("tidyDat.R")

## Get the raw data
rawDat <- import_data()

## Label the data
labeledDat <- label_activities(rawDat)

## Process the data
pDat <- process_data(labeledDat)

## Write the tidy data to the text file
write_tidy_data(pDat)