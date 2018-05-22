library(dplyr)
pwr <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
pwr <- subset(pwr, pwr$Date=="1/2/2007"| pwr$Date=="2/2/2007")

datetime <- strptime(paste(pwr$Date, pwr$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
s1 <- as.numeric(pwr$Sub_metering_1)
s2 <- as.numeric(pwr$Sub_metering_2)
s3 <- as.numeric(pwr$Sub_metering_3)


png("plot3.png", width=480, height=480)
plot(datetime, s1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, s2, type="l", col="red")
lines(datetime, s3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()