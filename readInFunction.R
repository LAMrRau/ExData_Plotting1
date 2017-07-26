# This function reads in the data from a file path
# and it subsets to the data and time

readFunction <- function (fName) {
   library(dplyr)
   myData <- read.table (fName, header = TRUE, sep = ";", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = c("?"))
   myData <- mutate(myData, newTime = as.POSIXct(strptime(paste(Date, Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")))
   timeA <- as.POSIXct(strptime("01/02/2007 00:00:00", format="%d/%m/%Y %H:%M:%S"))
   timeB <- as.POSIXct(strptime("03/02/2007 00:00:00", format="%d/%m/%Y %H:%M:%S"))
   myData <- subset(myData, newTime >= timeA & newTime < timeB )
   myData
}


# for testing of this function
#fileName <- "household_power_consumption.txt"
#myData <- readFunction(fileName)
#str(myData)

