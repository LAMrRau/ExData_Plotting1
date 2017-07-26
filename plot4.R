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
png(filename = "plot4.png", width=480, height=480, units = "px")
par(mfrow = c(2,2), cex = 0.80)
# plot topleft
with(myData, plot(newTime, Global_active_power, xlab = "", ylab = "Global Active Power", type="n"))
with(myData, lines(newTime, Global_active_power))
# plot topright
with(myData, plot(newTime, Voltage, xlab = "datetime", ylab = "Voltage", type="n"))
with(myData, lines(newTime, Voltage))
# plot bottom left
with(myData, plot(newTime, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type="n"))
with(myData, lines(newTime, Sub_metering_1))
with(myData, lines(newTime, Sub_metering_2, col="red"))
with(myData, lines(newTime, Sub_metering_3, col="blue"))
legend("topright", lty = c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty = "n")
# plot bottom right
with(myData, plot(newTime, Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type="n"))
with(myData, lines(newTime, Global_reactive_power))
#
dev.off()
