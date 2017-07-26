#
# Reading in the data for plotting
#
setwd("./EDA/Project1/ExData_Plotting1")
source("./readInFunction.R")
fileName <- "household_power_consumption.txt" # point towards correct file!
myData <- readFunction(fileName)
#
# Plotting the data: histogram of global active power (plot1)
#
png(filename = "plot1.png", width=480, height=480, units = "px")
hist(myData$Global_active_power, col = "red", breaks = 15, main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
