setwd("C:/Users/carlo/Dropbox/GitHub/datasciencecoursera/exploratory-data-analysis/week1")

#lets download the dataset
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
f <- file.path(getwd(), "dataset.zip")
download.file(url, f)
unzip(f)

library(dplyr)
library(data.table)
library(lubridate)

#prepare data
household_power_consumption <- fread(input = "household_power_consumption.txt", sep = "auto", header = "auto", na.strings = "?")
#household_power_consumption$DateTime <- strptime(paste(household_power_consumption$Date, household_power_consumption$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
household_power_consumption$DateTime <- dmy_hms(paste(household_power_consumption$Date, household_power_consumption$Time, sep = " "))
#household_power_consumption$Date <- as.Date(household_power_consumption$Date, format = "%d/%m/%Y")
household_power_consumption$Date <- dmy(household_power_consumption$Date)
Date1 <- as.Date("2007-02-01")
Date2 <- as.Date("2007-02-02")
household_power_consumption <- filter(household_power_consumption, Date >= Date1 & Date <= Date2)
