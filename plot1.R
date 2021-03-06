library(dplyr)
pwr <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
pwr <- subset(pwr, pwr$Date == "1/2/2007" | pwr$Date == "2/2/2007")
var <- as.numeric(pwr$Global_active_power)
png("plot1.png", width=480, height=480)
hist(var, main="Global Active Power", xlab="Global Active Power (kilowatt)", ylab="Frequency",col="red")
dev.off()