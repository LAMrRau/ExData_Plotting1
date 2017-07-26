#
# Reading in the data for plotting
#
setwd("./EDA/Project1/ExData_Plotting1")
source("./readInFunction.R")
fileName <- "household_power_consumption.txt" # point towards correct file!
myData <- readFunction(fileName)
#
# Plotting the data: plot of global active power wrt time of days (plot2)
#
png(filename = "plot2.png", width=480, height=480, units = "px")
with(myData, plot(newTime, Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type="n"))
with(myData, lines(newTime, Global_active_power))
dev.off()
