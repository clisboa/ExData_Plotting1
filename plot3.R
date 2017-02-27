source("prepareData.R")
#plot3
#define size and file
png("plot3.png", width = 480, height = 480)

# create plot
plot(household_power_consumption$DateTime,household_power_consumption$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(household_power_consumption$DateTime,household_power_consumption$Sub_metering_2,col = "red")
lines(household_power_consumption$DateTime,household_power_consumption$Sub_metering_3,col = "blue")
legend("topright", col = c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty = c(1,1), lwd = c(1,1))
#write png
dev.off()