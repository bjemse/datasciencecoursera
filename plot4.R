#reading data
dframe1 <- read.csv("household_power_consumption.txt", na.strings = "?", sep = ";")
#creating plot4
x <-as.Date(dframe1$Date, tryFormats="%d/%m/%Y")
df <- subset(dframe1,x=="2007-02-02"| x=="2007-02-01")
#creating plot4
        par(mfrow=c(2,2))
        #plot global active pover 1
        plot(df$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="", xlim=c(0,2880), xaxt="n")
        axis(side=1, at=c(0,1440, 2880), labels=c("Thursday", "Friday", "Saturday"))
        #plot voltage
        plot(df$Voltage, type="l", ylab="Voltage", xlab="Datetime", xlim=c(0,3000), xaxt="n")
        axis(side=1, at=c(0,1440, 2880), labels=c("Thursday", "Friday", "Saturday"))
        #plot energy sub metering
        plot(df$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", xlim=c(0,2880), xaxt="n")
        axis(side=1, at=c(0,1440, 2880), labels=c("Thursday", "Friday", "Saturday"))
        points(df$Sub_metering_2, type="l", col="red")
        points(df$Sub_metering_3, type="l", col="blue")
        legend("topright", bty="n", lty=c(1,1,1),lwd=2, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        #plot Global reactive power 
        plot(df$Global_reactive_power, type="l",
        xlab="Datetime", ylab="Global_reactive_power", xlim=c(0,3000), ylim=c(0,0.5), xaxt="n")
        axis(side=1, at=c(0,1440, 2880), labels=c("Thursday", "Friday", "Saturday"))
        axis(side=2, at=c(0.1,0.3,0.5), labels=c(0.1, 0.3, 0.5))
#copying plot to png file
png("plot4.png")
dev.copy(png, file="plot4.png")
dev.off()
