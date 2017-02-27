source("prepareData.R")
#plot1
#define size and file
png("plot1.png", width = 480, height = 480)

# reading data
household_power_consumption <- readRDS("household_power_consumption.rds")

# create histogram
hist(household_power_consumption$Global_active_power, main = paste("Global Active Power"), col = "red", xlab = "Global Active Power (kilowatts)")

#write png
dev.off()
