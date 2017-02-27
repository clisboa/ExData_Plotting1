source("prepareData.R")
#plot2
#define size and file
png("plot2.png", width = 480, height = 480)

# create plot
plot(household_power_consumption$DateTime, household_power_consumption$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

#write png
dev.off()
