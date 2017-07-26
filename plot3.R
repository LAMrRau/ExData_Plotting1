#
# Reading in the data for plotting
#
setwd("./EDA/Project1/ExData_Plotting1")
source("./readInFunction.R")
fileName <- "household_power_consumption.txt" # point towards correct file!
myData <- readFunction(fileName)
#
# Plotting the data: plot of energy sub metering wrt time of days (plot3)
#
png(filename = "plot3.png", width=480, height=480, units = "px")
with(myData, plot(newTime, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type="n"))
with(myData, lines(newTime, Sub_metering_1))
with(myData, lines(newTime, Sub_metering_2, col="red"))
with(myData, lines(newTime, Sub_metering_3, col="blue"))
legend("topright", lty = c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
