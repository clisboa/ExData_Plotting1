source("prepareData.R")
#plot4
#define size and file
png("plot4.png", width = 480, height = 480)

# create plot
##create matrix 
par(mfrow = c(2, 2)) 

#create first plot
plot(household_power_consumption$DateTime, household_power_consumption$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")#, cex = 0.2)
#create second plot
plot(household_power_consumption$DateTime, household_power_consumption$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
#create third plot
plot(household_power_consumption$DateTime, household_power_consumption$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Submetering")
lines(household_power_consumption$DateTime, household_power_consumption$Sub_metering_2, type = "l", col = "red")
lines(household_power_consumption$DateTime, household_power_consumption$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 2, col = c("black", "red", "blue"), bty = "o")
#create forth plot
plot(household_power_consumption$DateTime, household_power_consumption$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
#write png
dev.off()